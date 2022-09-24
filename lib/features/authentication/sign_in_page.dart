import 'package:flutter/material.dart';
import 'package:yourone/common/app_app_bar.dart';
import 'package:yourone/common/app_primary_button.dart';
import 'package:yourone/theme/app_color.dart';
import 'package:yourone/theme/text_styles.dart';

import '../../common/app_multiple_choice.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar.withSkip(),
      body: SafeArea(
          child: Column(
        children: [
          AppButton.primary(text: 'Register', onTap: () {}),
          AppButton.secondary(text: 'Register', onTap: () {}),
          AppMultipleChoice(),
        ],
      )),
    );
  }
}
