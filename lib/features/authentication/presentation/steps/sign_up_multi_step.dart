import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yourone/common/app_app_bar.dart';
import 'package:yourone/common/app_multiple_choice.dart';
import 'package:yourone/common/app_single_choice.dart';
import 'package:yourone/features/authentication/bloc/cubit/sign_up_cubit.dart';
import 'package:yourone/features/authentication/presentation/sign_up_page.dart';
import 'package:yourone/gen/assets.gen.dart';
import 'package:yourone/theme/app_dimen.dart';

class SignUpStepMulti<T extends Enum> extends StatelessWidget
    implements StepIsRequired {
  const SignUpStepMulti(
      {Key? key,
      required this.options,
      required this.formName,
      required this.formLabel,
      required this.onSave,
      required this.required,
      this.renderChild,
      required this.aboutYourself})
      : super(key: key);

  final List<T> options;
  final String formName;
  final String formLabel;
  final Function(List<T>?) onSave;
  final bool required;
  final bool aboutYourself;
  final Widget Function(T)? renderChild;

  @override
  Widget build(BuildContext context) {
    return AppMultipleChoice<T>(
      enumChoice: options,
      formName: formName,
      formLabel: formLabel,
      buttonText: 'Next',
      isRequired: isRequired(),
      onSave: (List<T>? value) {
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
