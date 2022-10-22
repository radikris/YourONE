import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:yourone/common/app_primary_button.dart';
import 'package:yourone/features/authentication/bloc/cubit/sign_up_cubit.dart';
import 'package:yourone/features/authentication/presentation/sign_up_page.dart';
import 'package:yourone/gen/assets.gen.dart';
import 'package:yourone/theme/app_color.dart';
import 'package:yourone/theme/text_styles.dart';

class SignUpSwitchRoleStep extends StatelessWidget implements StepIsRequired {
  const SignUpSwitchRoleStep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Your profile looks absolutely magnificent',
          style: TextStyles.bold18,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 8,
        ),
        RichText(
          text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              TextSpan(text: 'Now lets see who is', style: TextStyles.bold16),
              TextSpan(
                  text: ' Your One!',
                  style: TextStyles.bold16.copyWith(color: AppColor.primary)),
            ],
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Lottie.asset(Assets.animations.heart),
        const Spacer(),
        AppButton.primary(
          text: 'Next',
          onTap: () {
            context.read<SignUpCubit>().nextStep();
          },
        )
      ],
    );
  }

  @override
  bool isRequired() {
    return true;
  }

  @override
  bool isAboutYourself() {
    return false;
  }
}
