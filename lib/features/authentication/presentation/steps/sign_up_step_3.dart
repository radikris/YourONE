import 'package:flutter/material.dart';
import 'package:yourone/common/app_app_bar.dart';
import 'package:yourone/common/app_multiple_choice.dart';
import 'package:yourone/features/authentication/presentation/sign_up_page.dart';

class SignUpStep3 extends StatelessWidget implements StepIsRequired {
  const SignUpStep3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(title: 'Rólad', subTitle: 'Csak lazán'),
      body: SizedBox(),
    );
  }

  @override
  bool isRequired() {
    return true;
  }
}
