import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.dart';
part 'sign_up_cubit.freezed.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit()
      : super(SignUpState(currentStep: 0, firstName: '', test1: [], age: []));

  void handleTest() {
    emit(state.copyWith(firstName: 'alma'));
  }

  void nextStep() {
    emit(state.copyWith(currentStep: state.currentStep + 1));
  }

  void backStep() {
    emit(state.copyWith(currentStep: state.currentStep - 1));
  }
}
