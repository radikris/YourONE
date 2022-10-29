part of 'chat_cubit.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.initial() = _Initial;
  const factory ChatState.loading() = _Loading;
  const factory ChatState.error(String message) = _Error;
  const factory ChatState.success({
    List<RecentChat>? allChat,
    List<UserProfile>? allMatches,
  }) = _Success;

  const ChatState._();
}
