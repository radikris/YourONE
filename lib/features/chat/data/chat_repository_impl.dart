import 'package:injectable/injectable.dart';
import 'package:yourone/entities/user_profile.dart';
import 'package:yourone/entities/chat_message.dart';
import 'package:yourone/features/chat/data/chat_repository.dart';
import 'package:yourone/swagger_generated_code/your_one_service.swagger.dart';

@LazySingleton(as: ChatRepository)
class ChatRepositoryImpl implements ChatRepository {
  final YourOneService api;
  ChatRepositoryImpl(this.api);

  @override
  Future<List<UserProfile>> getAllChats() async {
    return await api.apiChatGet().then((value) =>
        value.body!.map((e) => UserProfile.fromJson(e.toJson())).toList());
  }

  @override
  Future<List<UserProfile>> getAllMatches() async {
    return await api.apiPersonAllPartnersGet().then((value) =>
        value.body!.map((e) => UserProfile.fromJson(e.toJson())).toList());
  }

  @override
  Stream<List<ChatMessage>> getChat(String userId) {
    // TODO: implement getChat
    throw UnimplementedError();
  }

  @override
  Future<void> sendMessage(String message) {
    // TODO: implement sendMessage
    throw UnimplementedError();
  }
}
