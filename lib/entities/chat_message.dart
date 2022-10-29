// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ChatMessage {
  final String message;
  final int senderId;
  late final DateTime timeStamp;
  ChatMessage(
      {required this.message, required this.senderId, required int timeStamp}) {
    this.timeStamp = DateTime.fromMillisecondsSinceEpoch(timeStamp);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
      'senderId': senderId,
      'timeStamp': timeStamp.millisecondsSinceEpoch,
    };
  }

  factory ChatMessage.fromMap(Map<String, dynamic> map) {
    return ChatMessage(
      message: map['message'] as String,
      senderId: map['senderId'] as int,
      timeStamp: map['timeStamp'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory ChatMessage.fromJson(String source) =>
      ChatMessage.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'ChatMessage(message: $message, senderId: $senderId, timeStamp: $timeStamp)';

  @override
  bool operator ==(covariant ChatMessage other) {
    if (identical(this, other)) return true;

    return other.message == message &&
        other.senderId == senderId &&
        other.timeStamp == timeStamp;
  }

  @override
  int get hashCode => message.hashCode ^ senderId.hashCode ^ timeStamp.hashCode;
}
