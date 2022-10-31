import 'package:injectable/injectable.dart';
import 'package:yourone/entities/recent_chat.dart';
import 'package:yourone/entities/user_profile.dart';
import 'package:yourone/entities/chat_message.dart';
import 'package:yourone/features/chat/data/chat_repository.dart';
import 'package:yourone/swagger_generated_code/your_one_service.swagger.dart';

@LazySingleton(as: ChatRepository)
class ChatRepositoryImpl implements ChatRepository {
  final YourOneService api;
  ChatRepositoryImpl(this.api);

  @override
  Future<List<RecentChat>> getAllChats() async {
    return await api.apiChatGet().then((value) =>
        value.body!.map((e) => RecentChat.fromMap(e.toJson())).toList());
  }

  @override
  Future<List<UserProfile>> getAllMatches() async {
    return await api.apiPersonAllPartnersGet().then((value) =>
        value.body!.map((e) => UserProfile.fromJson(e.toJson())).toList());
  }

  @override
  Future<List<ChatMessage>> getChat(int partnerId) async {
    return await api
        .apiChatAddresseeIdGet(addresseeId: partnerId)
        .then((value) => value.body!.map((e) {
              return ChatMessage.fromMap(e.toJson());
            }).toList());
  }
}
