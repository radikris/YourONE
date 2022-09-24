import 'package:flutter/material.dart';
import 'package:yourone/theme/app_color.dart';
import 'package:yourone/theme/app_dimen.dart';
import 'package:yourone/theme/text_styles.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {Key? key,
      required this.text,
      required this.onTap,
      this.buttonColor,
      this.textColor})
      : super(key: key);

  final String text;
  final VoidCallback onTap;
  final Color? buttonColor;
  final Color? textColor;

  factory AppButton.primary(
      {required String text, required VoidCallback onTap}) {
    return AppButton(
      text: text,
      onTap: onTap,
      buttonColor: AppColor.primary,
      textColor: AppColor.white,
    );
  }
  factory AppButton.secondary(
      {required String text, required VoidCallback onTap}) {
    return AppButton(
      text: text,
      onTap: onTap,
      buttonColor: AppColor.primary10,
      textColor: AppColor.primary,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size.fromHeight(50)),
        padding: MaterialStateProperty.all(AppDimen.horizontal32Vertical16),
        backgroundColor: MaterialStateProperty.all(buttonColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        )),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyles.bold16.copyWith(color: textColor),
        ),
      ),
    );
  }
}
