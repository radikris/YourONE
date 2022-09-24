import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yourone/common/app_app_bar.dart';
import 'package:yourone/common/app_multiple_choice.dart';
import 'package:yourone/features/authentication/bloc/cubit/sign_up_cubit.dart';
import 'package:yourone/features/authentication/sign_up_page.dart';
import 'package:yourone/theme/app_dimen.dart';

enum TestEnum {
  first,
  second,
  third,
  forth,
  a,
  b,
  c,
  d,
  e,
  f,
  g,
  h,
  i,
  j,
  k,
  l,
  m
}

class SignUpStep1 extends StatelessWidget implements StepIsRequired {
  const SignUpStep1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppMultipleChoice<TestEnum>(
      enumChoice: TestEnum.values,
      formName: 'step1',
      formLabel: 'Töltsd ki tesóm',
      buttonText: 'Next',
      isRequired: isRequired(),
      onSave: (List<TestEnum>? value) {
        context.read<SignUpCubit>().nextStep();
      },
    );
  }

  @override
  bool isRequired() {
    return true;
  }
}
