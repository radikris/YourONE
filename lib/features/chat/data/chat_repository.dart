import 'dart:async';

import 'package:yourone/entities/chat_message.dart';
import 'package:yourone/entities/recent_chat.dart';
import 'package:yourone/entities/user_profile.dart';

abstract class ChatRepository {
  Future<List<UserProfile>> getAllMatches();
  Future<List<RecentChat>> getAllChats();
  Future<List<ChatMessage>> getChat(int partnerId);
}
