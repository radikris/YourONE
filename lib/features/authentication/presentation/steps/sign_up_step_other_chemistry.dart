import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:yourone/common/app_simple_slider.dart';
import 'package:yourone/features/authentication/bloc/cubit/sign_up_cubit.dart';
import 'package:yourone/features/authentication/presentation/sign_up_page.dart';
import 'package:yourone/gen/assets.gen.dart';

class SignUpStepOtherChemistry extends StatelessWidget
    implements StepIsRequired {
  const SignUpStepOtherChemistry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      AppSimpleSlider(
        formName: 'chemistry',
        formLabel:
            'Above what matching percentage would you like to see people all around the world?',
        buttonText: 'Lets find Your One',
        initialValue:
            context.read<SignUpCubit>().state.yourSelf.chemistry?.toDouble(),
        onSave: (int? value) {
          context.read<SignUpCubit>().handleChemistry(value!);
          context.read<SignUpCubit>().nextStep();
        },
      ),
      SizedBox(
        height: 16,
      ),
      Center(
        child: Lottie.asset(
          Assets.animations.search,
        ),
      ),
    ]);
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
