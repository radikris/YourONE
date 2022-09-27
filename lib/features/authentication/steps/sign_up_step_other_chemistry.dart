import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yourone/common/app_simple_slider.dart';
import 'package:yourone/features/authentication/bloc/cubit/sign_up_cubit.dart';
import 'package:yourone/features/authentication/sign_up_page.dart';

class SignUpStepOtherChemistry extends StatelessWidget
    implements StepIsRequired {
  const SignUpStepOtherChemistry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppSimpleSlider(
      formName: 'chemistry',
      formLabel: 'Töltsd ki tesóm',
      buttonText: 'Next',
      onSave: (int? value) {
        context.read<SignUpCubit>().nextStep();
      },
    );
  }

  @override
  bool isRequired() {
    return true;
  }
}
