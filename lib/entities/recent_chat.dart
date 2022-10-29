// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:yourone/entities/chat_message.dart';
import 'package:yourone/entities/user_profile.dart';

class RecentChat {
  final UserProfile partner;
  final ChatMessage lastMessage;
  final int newMessagesCount;
  RecentChat({
    required this.partner,
    required this.lastMessage,
    required this.newMessagesCount,
  });

  RecentChat copyWith({
    UserProfile? partner,
    ChatMessage? lastMessage,
    int? newMessagesCount,
  }) {
    return RecentChat(
      partner: partner ?? this.partner,
      lastMessage: lastMessage ?? this.lastMessage,
      newMessagesCount: newMessagesCount ?? this.newMessagesCount,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partner': partner.toJson(),
      'lastMessage': lastMessage.toMap(),
      'newMessagesCount': newMessagesCount,
    };
  }

  factory RecentChat.fromMap(Map<String, dynamic> map) {
    return RecentChat(
      partner: UserProfile.fromJson(map['partner'] as Map<String, dynamic>),
      lastMessage:
          ChatMessage.fromMap(map['lastMessage'] as Map<String, dynamic>),
      newMessagesCount: map['newMessagesCount'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory RecentChat.fromJson(String source) =>
      RecentChat.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'RecentChat(partner: $partner, lastMessage: $lastMessage, newMessagesCount: $newMessagesCount)';

  @override
  bool operator ==(covariant RecentChat other) {
    if (identical(this, other)) return true;

    return other.partner == partner &&
        other.lastMessage == lastMessage &&
        other.newMessagesCount == newMessagesCount;
  }

  @override
  int get hashCode =>
      partner.hashCode ^ lastMessage.hashCode ^ newMessagesCount.hashCode;
}
