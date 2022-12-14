import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yourone/common/app_double_slider.dart';
import 'package:yourone/features/authentication/bloc/cubit/sign_up_cubit.dart';
import 'package:yourone/features/authentication/presentation/sign_up_page.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class SignUpStepOtherAge extends StatelessWidget implements StepIsRequired {
  const SignUpStepOtherAge({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppDoubleSlider(
      formName: 'age',
      formLabel: 'Töltsd ki tesóm',
      buttonText: 'Next',
      minimumValue:
          context.read<SignUpCubit>().state.yourSelf.minAge.toDouble(),
      maximumValue:
          context.read<SignUpCubit>().state.yourSelf.maxAge.toDouble(),
      onSave: (RangeValues? value) {
        context
            .read<SignUpCubit>()
            .handleAgeRange(value!.start.toInt(), value.end.toInt());
        context.read<SignUpCubit>().nextStep();
      },
    );
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
