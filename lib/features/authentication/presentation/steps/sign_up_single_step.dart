import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yourone/common/app_app_bar.dart';
import 'package:yourone/common/app_multiple_choice.dart';
import 'package:yourone/common/app_single_choice.dart';
import 'package:yourone/features/authentication/bloc/cubit/sign_up_cubit.dart';
import 'package:yourone/features/authentication/presentation/sign_up_page.dart';
import 'package:yourone/gen/assets.gen.dart';
import 'package:yourone/theme/app_dimen.dart';

class SignUpStepSingle<T extends Enum> extends StatelessWidget
    implements StepIsRequired {
  const SignUpStepSingle(
      {Key? key,
      required this.options,
      required this.formName,
      required this.formLabel,
      required this.onSave,
      required this.required,
      this.renderChild,
      required this.aboutYourself,
      this.initialValue})
      : super(key: key);

  final List<T> options;
  final T? initialValue;
  final String formName;
  final String formLabel;
  final Function(T?) onSave;
  final bool required;
  final bool aboutYourself;
  final Widget Function(T)? renderChild;

  @override
  Widget build(BuildContext context) {
    return AppSingleChoice<T>(
      initialValue: initialValue,
      enumChoice: options,
      formName: formName,
      formLabel: formLabel,
      buttonText: 'Next',
      isRequired: isRequired(),
      onSave: (T? value) {
        context.read<SignUpCubit>().nextStep();
        onSave(value);
      },
      renderChild: renderChild,
    );
  }

  @override
  bool isRequired() {
    return required;
  }

  @override
  bool isAboutYourself() {
    return aboutYourself;
  }
}
