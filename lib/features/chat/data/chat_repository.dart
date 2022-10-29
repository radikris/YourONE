import 'dart:async';

import 'package:yourone/entities/chat_message.dart';
import 'package:yourone/entities/user_profile.dart';

abstract class ChatRepository {
  Future<List<UserProfile>> getAllMatches();
  Future<List<UserProfile>> getAllChats();
  Stream<List<ChatMessage>> getChat(String userId);
  Future<void> sendMessage(String message);
}
