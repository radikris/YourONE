import 'package:auto_route/auto_route.dart';
import 'package:yourone/auto_router.gr.dart';
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
          AppButton.primary(
              text: 'Register',
              onTap: () {
                context.replaceRoute(SignUpRoute());
              }),
        ],
      )),
    );
  }
}
