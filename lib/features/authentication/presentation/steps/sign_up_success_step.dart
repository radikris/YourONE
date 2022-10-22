import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:yourone/gen/assets.gen.dart';
import 'package:yourone/theme/app_color.dart';
import 'package:yourone/theme/text_styles.dart';

class SignUpSuccessStep extends StatelessWidget {
  const SignUpSuccessStep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            'You successfully filled out everything',
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
                TextSpan(
                    text: 'Ready to find Your One?', style: TextStyles.bold16),
                TextSpan(
                    text: ' Leeeets go!',
                    style: TextStyles.bold16.copyWith(color: AppColor.primary)),
              ],
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Lottie.asset(Assets.animations.heart),
        ],
      ),
    );
  }
}
