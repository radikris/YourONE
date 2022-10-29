import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yourone/common/app_input_form.dart';
import 'package:yourone/features/authentication/bloc/cubit/sign_up_cubit.dart';
import 'package:yourone/features/authentication/presentation/sign_up_page.dart';

class SignUpStepName extends StatelessWidget implements StepIsRequired {
  const SignUpStepName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppInputForm(
        buttonText: 'Next',
        formLabel: 'Please enter your name',
        formName: 'name',
        isNumeric: false,
        isDatePicker: false,
        initialValue: context.read<SignUpCubit>().state.yourSelf.name,
        onSave: (String? value) {
          context.read<SignUpCubit>().handleName(value!);
          context.read<SignUpCubit>().nextStep();
        },
        maxValue: 20,
        isRequired: isRequired());
  }

  @override
  bool isRequired() {
    return true;
  }

  @override
  bool isAboutYourself() {
    return true;
  }
}
