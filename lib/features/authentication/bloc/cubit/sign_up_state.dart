part of 'sign_up_cubit.dart';

@freezed
abstract class SignUpState with _$SignUpState {
  const factory SignUpState({
    required int currentStep,
    required String firstName,
    required List<String> test1,
    required List<int> age,
    List<FileOrUrl>? images,
    required String bio,
  }) = _SignUpState;
}
