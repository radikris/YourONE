import 'dart:async';

abstract class ChatRepository {
  Future<List<dynamic>> getAllMatches();
  Stream<List<dynamic>> getAllChats();
  Stream<List<dynamic>> getChat(String userId);
  Future<void> sendMessage(String message);
}
