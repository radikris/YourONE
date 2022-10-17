import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:yourone/theme/app_color.dart';
import 'package:yourone/theme/app_dimen.dart';
import 'package:yourone/theme/text_styles.dart';

class ProfileDetailSectionAttribute extends StatelessWidget {
  const ProfileDetailSectionAttribute(
      {Key? key, required this.title, required this.isPropertyMatch})
      : super(key: key);

  final String title;
  final bool isPropertyMatch;

  @override
  Widget build(BuildContext context) {
    return Chip(
        labelPadding: EdgeInsets.all(5.0),
        avatar: isPropertyMatch
            ? Icon(
                Icons.done_all_sharp,
                color: AppColor.primary,
              )
            : null,
        label: Text(
          title,
          style: isPropertyMatch
              ? TextStyles.bold14.copyWith(color: AppColor.primary)
              : TextStyles.normal14.copyWith(color: AppColor.black70),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        backgroundColor: AppColor.white,
        side: BorderSide(
          color: isPropertyMatch ? AppColor.primary : AppColor.border,
        ),
        padding: AppDimen.all4);

    Container(
      decoration: BoxDecoration(
          color: AppColor.white,
          border: Border.all(color: AppColor.primary),
          borderRadius: BorderRadius.circular(8)),
      padding: AppDimen.all4,
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (isPropertyMatch)
              Icon(
                Icons.done_all_sharp,
                color: AppColor.primary,
              ),
            Text(
              title,
              style: isPropertyMatch
                  ? TextStyles.bold14.copyWith(color: AppColor.primary)
                  : TextStyles.normal14.copyWith(color: AppColor.border),
            )
          ],
        ),
      ),
    );
  }
}
