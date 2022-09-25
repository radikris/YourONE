import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yourone/common/app_input_form.dart';
import 'package:yourone/features/authentication/bloc/cubit/sign_up_cubit.dart';
import 'package:yourone/features/authentication/sign_up_page.dart';

class SignUpStepAge extends StatelessWidget implements StepIsRequired {
  const SignUpStepAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppInputForm(
        buttonText: 'Next',
        formLabel: 'Please enter your age',
        formName: 'age',
        isNumeric: true,
        onSave: (String? value) {
          context.read<SignUpCubit>().handleName();
          context.read<SignUpCubit>().nextStep();
        },
        maxValue: 100,
        isRequired: isRequired());
  }

  @override
  bool isRequired() {
    return true;
  }
}
