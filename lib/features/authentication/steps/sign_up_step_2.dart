import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yourone/common/app_app_bar.dart';
import 'package:yourone/common/app_single_choice.dart';
import 'package:yourone/features/authentication/bloc/cubit/sign_up_cubit.dart';
import 'package:yourone/features/authentication/sign_up_page.dart';

enum TestEnum2 { a, b, c, d, e, f, g }

class SignUpStep2 extends StatelessWidget implements StepIsRequired {
  const SignUpStep2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppSingleChoice<TestEnum2>(
      enumChoice: TestEnum2.values,
      formName: 'step2',
      formLabel: 'Töltsd ki tesóm ezt is',
      buttonText: 'Next',
      isRequired: isRequired(),
      onSave: (TestEnum2? value) {
        print(value);
        context.read<SignUpCubit>().nextStep();
      },
    );
  }

  @override
  bool isRequired() {
    return false;
  }
}
