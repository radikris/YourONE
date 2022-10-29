import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';
import 'package:yourone/entities/chat_message.dart';
import 'package:yourone/entities/recent_chat.dart';
import 'package:yourone/entities/user_profile.dart';
import 'package:yourone/features/chat/data/chat_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stomp_dart_client/stomp.dart';
import 'package:stomp_dart_client/stomp_config.dart';
import 'package:stomp_dart_client/stomp_frame.dart';

part 'chat_state.dart';
part 'chat_cubit.freezed.dart';

String ws_url = "ws://194.163.179.31:8040/ws2";
String destination = "/user/id/queue/messages";
String message_destination = "/app/chat";

@injectable
class ChatCubit extends Cubit<ChatState> {
  final ChatRepository repository;

  ChatCubit(this.repository) : super(ChatState.initial());

  StreamController<List<ChatMessage>> streamController = BehaviorSubject();
  late StompClient stompClient;

  void fetchPartnersAndChats() async {
    final allChat = await repository.getAllChats();
    final allMatches = await repository.getAllMatches();
    emit(ChatState.success(allChat: allChat, allMatches: allMatches));
  }

  Future<List<ChatMessage>> fetchAllChatHistoryByPartnerId(
      int partnerId) async {
    //return  await repository.getChat(partnerId);
    return [
      ChatMessage(message: 'asd', senderId: 4, timeStamp: 12345),
      ChatMessage(message: 'as2asdasasd', senderId: 4, timeStamp: 13345),
      ChatMessage(
          message: 'szia tesomsz ez mar a masik user historyjabul kexeli ide',
          senderId: 41,
          timeStamp: 221982345),
      ChatMessage(
          message:
              'ja ertem hogy most fogok valaszolni hosszut nagyon hosszu iod utan mit sozlsz te ehhez ❤️❤️',
          senderId: 4,
          timeStamp: 98221982345),
    ];
  }

  void connectMessageStream(
      {required int currentUserId, required int partnerId}) async {
    var listMessage = <ChatMessage>[];
    final history = await fetchAllChatHistoryByPartnerId(partnerId);
    listMessage.addAll(history);

    void onConnect(StompFrame frame) {
      print('onconnected');
      stompClient.subscribe(
        destination: destination.replaceAll(
          'id',
          partnerId.toString(),
        ),
        callback: (frame) {
          Map<String, dynamic> result = json.decode(frame.body!);
          //receive Message from topic
          listMessage.add(ChatMessage(
              message: result['text'],
              senderId: result['senderId'],
              timeStamp: result['timeStamp']));

          //Observe list message
          streamController.sink.add(listMessage);
        },
      );
    }

    stompClient = StompClient(
      config: StompConfig(
        url: ws_url,
        onConnect: onConnect,
        beforeConnect: () async {
          print('waiting to connect...');
        },
        onDebugMessage: (frame) {
          print('WebSocket - onDebugMessage executed! - $frame');
        },
        onStompError: (StompFrame frame) {
          print(
              'A stomp error occurred in web socket connection :: ${frame.toString()}');
        },
        onWebSocketError: (dynamic frame) {
          print(
              'A Web socket error occurred in web socket connection :: ${frame.toString()}');
        },
        onWebSocketDone: () {
          print('WebSocket - onWebSocketDone executed!');
        },
        onDisconnect: (frame) {
          print('WebSocket - onDisconnect executed! ${frame.toString()}');
        },
        onUnhandledFrame: (frame) {
          print('WebSocket - onUnhandledFrame executed! ${frame.toString()}');
        },
        onUnhandledMessage: (frame) {
          print('WebSocket - onUnhandledMessage executed! ${frame.toString()}');
        },
        onUnhandledReceipt: (frame) {
          print('WebSocket - onUnhandledReceipt executed! ${frame.toString()}');
        },
        connectionTimeout: Duration(seconds: 5),
        useSockJS: false,
      ),
    );
    if (!stompClient.isActive) stompClient.activate();
    if (!streamController.isClosed) streamController.add(listMessage);
  }

  void sendMessage(
      {required String message,
      required int addresseeId,
      required String token}) {
    stompClient.send(
      /*     headers: {
                  'Authorization': getIt<AuthStore>().currentUserToken!
                }, */
      destination: message_destination,
      body: json
          .encode({'text': message, 'addresseeId': addresseeId, 'jwt': token}),
    );
  }

  void disconnectMessageStream() async {
    await streamController.close();
    stompClient.deactivate();
  }
}
