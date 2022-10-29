import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:yourone/entities/user_profile.dart';
import 'package:yourone/features/chat/data/chat_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_state.dart';
part 'chat_cubit.freezed.dart';

@injectable
class ChatCubit extends Cubit<ChatState> {
  final ChatRepository repository;

  ChatCubit(this.repository) : super(ChatState.initial());

  void fetchPartnersAndChats() async {
    final allChat = await repository.getAllChats();
    final allMatches = await repository.getAllMatches();
    emit(ChatState.success(allChat: allChat, allMatches: allMatches));
  }
}
