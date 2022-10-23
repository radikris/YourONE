part of 'sign_up_cubit.dart';

@freezed
class SignUpState with _$SignUpState {
  const SignUpState._();

  const factory SignUpState({
    required int currentStep,
    required UserProfile yourSelf,
    required UserProfile yourOne,
    String? email,
    String? password,
    String? phoneNumber,
  }) = _SignUpState;
}
