import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:stomp_dart_client/stomp.dart';
import 'package:stomp_dart_client/stomp_config.dart';
import 'package:stomp_dart_client/stomp_frame.dart';
import 'package:yourone/common/app_app_bar.dart';
import 'package:yourone/entities/chat_message.dart';
import 'package:yourone/features/authentication/data/auth_store.dart';
import 'package:yourone/features/chat/components/recent_chats.dart';
import 'package:yourone/injection.dart';
import 'package:yourone/theme/app_color.dart';
import 'package:yourone/theme/app_dimen.dart';
import 'package:yourone/theme/text_styles.dart';

StreamController<List<ChatMessage>> streamController = BehaviorSubject();
String ws_url = "ws://194.163.179.31:8040/ws2";
String destination = "/user/id/queue/messages";
String message_destination = "/app/chat";
var _listMessage = <ChatMessage>[];

class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({Key? key}) : super(key: key);

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  late StompClient stompClient;

  void onConnect(StompFrame frame) {
    print('onconnected');
    stompClient.subscribe(
      destination: destination.replaceAll(
          'id', getIt<AuthStore>().currentUserId == 1 ? '1' : '41'),
      callback: (frame) {
        Map<String, dynamic> result = json.decode(frame.body!);
        //receive Message from topic
        _listMessage.add(ChatMessage(
            message: result['text'],
            senderId: result['senderId'],
            timeStamp: result['timeStamp']));

        //Observe list message
        streamController.sink.add(_listMessage);
      },
    );
  }

  @override
  void onDispose() {
    super.dispose();
    streamController.close();
    print("ondispose");
    stompClient.deactivate();
  }

  @override
  void initState() {
    super.initState();

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
        /*    stompConnectHeaders: {
          'Upgrade': 'websocket',
          'Connection': 'Upgrade',
          'Authorization': getIt<AuthStore>().currentUserToken!
        },
        webSocketConnectHeaders: {
          'Upgrade': 'websocket',
          'Connection': 'Upgrade',
          'Authorization': getIt<AuthStore>().currentUserToken!
        }, */
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
    streamController.add(_listMessage);
  }

  final textEditingController = TextEditingController();

  _buildMessage(ChatMessage message, bool isMe) {
    final msg = ConstrainedBox(
      constraints: new BoxConstraints(
        minWidth: MediaQuery.of(context).size.width * 0.4,
        maxWidth: MediaQuery.of(context).size.width * 0.6,
      ),
      child: Container(
        margin: AppDimen.vertical8,
        padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
        decoration: BoxDecoration(
          color: isMe ? AppColor.primary : AppColor.primary10,
          borderRadius: isMe
              ? BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  bottomLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                )
              : BorderRadius.only(
                  topRight: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                  topLeft: Radius.circular(15.0),
                ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              message.timeStamp.toString(),
              style: TextStyles.normal14.copyWith(color: AppColor.black70),
            ),
            SizedBox(height: 8.0),
            Text(
              message.message,
              style: TextStyles.normal14.copyWith(color: AppColor.black70),
            ),
          ],
        ),
      ),
    );
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: msg,
    );
  }

  _buildMessageComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.photo),
            iconSize: 25.0,
            color: Theme.of(context).primaryColor,
            onPressed: () {},
          ),
          Expanded(
            child: TextField(
              controller: textEditingController,
              textCapitalization: TextCapitalization.sentences,
              onChanged: (value) {},
              decoration: InputDecoration.collapsed(
                hintText: 'Send a message...',
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            iconSize: 25.0,
            color: Theme.of(context).primaryColor,
            onPressed: () {
              print("send: + " + textEditingController.text);
              stompClient.send(
                /*     headers: {
                  'Authorization': getIt<AuthStore>().currentUserToken!
                }, */
                destination: message_destination,
                body: json.encode({
                  'text': textEditingController.text,
                  'addresseeId': getIt<AuthStore>().currentUserId == 1 ? 41 : 1,
                  'jwt': getIt<AuthStore>().currentUserToken!
                }),
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppAppBar(title: 'Person neve', subTitle: 'Mainleiras, 24'),
        backgroundColor: AppColor.primary10,
        body: Column(
          children: [
            Expanded(
              child: Container(
                padding: AppDimen.horizontal16,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(32),
                  ),
                ),
                child: GestureDetector(
                  onTap: () => FocusScope.of(context).unfocus(),
                  child: Column(
                    children: <Widget>[
                      /*  Expanded(
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0),
                            ),
                            child: ListView.separated(
                              physics: BouncingScrollPhysics(),
                              reverse: true,
                              padding: EdgeInsets.only(top: 15.0),
                              itemCount: messages.length,
                              itemBuilder: (BuildContext context, int index) {
                                final Message message = messages[index];
                                final bool isMe = index % 2 == 0;
                                return _buildMessage(message, isMe);
                              },
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                if (index % 3 == 0) {
                                  //TODO IF DATE GAP IS BIGGER THAN 1 (index-1)
                                  return Row(children: [
                                    Expanded(
                                      child: Container(
                                        margin: AppDimen.horizontal8,
                                        height: 1,
                                        color: AppColor.border,
                                      ),
                                    ),
                                    Text(
                                      'Datum',
                                      style: TextStyles.normal14
                                          .copyWith(color: AppColor.black70),
                                    ),
                                    Expanded(
                                      child: Container(
                                        margin: AppDimen.horizontal8,
                                        height: 1,
                                        color: AppColor.border,
                                      ),
                                    ),
                                  ]);
                                } else {
                                  return SizedBox();
                                }
                              },
                            ),
                          ),
                        ),
                      ), */
                      Expanded(
                          child: StreamBuilder(
                            stream: streamController.stream,
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                var listMessage =
                                    snapshot.data as List<ChatMessage>;
                                return ListView.builder(
                                    shrinkWrap: true,
                                    primary: false,
                                    itemBuilder: (context, index) {
                                      final msg = listMessage[index];
                                      return Padding(
                                        padding: EdgeInsets.only(right: 10.0),
                                        child: _buildMessage(
                                            msg,
                                            msg.senderId ==
                                                getIt<AuthStore>()
                                                    .currentUserId!),
                                      );
                                    },
                                    itemCount: listMessage.length);
                              }
                              return CircularProgressIndicator();
                            },
                          ),
                          flex: 5),
                      _buildMessageComposer(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
