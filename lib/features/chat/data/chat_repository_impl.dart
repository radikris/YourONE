import 'package:injectable/injectable.dart';
import 'package:yourone/entities/user_profile.dart';
import 'package:yourone/entities/chat_message.dart';
import 'package:yourone/features/chat/data/chat_repository.dart';

@LazySingleton(as: ChatRepository)
class ChatRepositoryImpl implements ChatRepository {
  @override
  Stream<List<UserProfile>> getAllChats() {
    // TODO: implement getAllChats
    throw UnimplementedError();
  }

  @override
  Future<List<UserProfile>> getAllMatches() {
    // TODO: implement getAllMatches
    throw UnimplementedError();
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
