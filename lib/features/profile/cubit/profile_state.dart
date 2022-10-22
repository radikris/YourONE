part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required UserProfile yourSelf,
    required UserProfile yourOne,
  }) = _ProfileState;
}
