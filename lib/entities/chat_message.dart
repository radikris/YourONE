class ChatMessage {
  final String message;
  final int senderId;
  late final DateTime timeStamp;

  ChatMessage(
      {required this.message, required this.senderId, required int timeStamp}) {
    this.timeStamp = DateTime.fromMillisecondsSinceEpoch(timeStamp);
  }
}
