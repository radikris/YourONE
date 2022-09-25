import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yourone/common/app_icon.dart';
import 'package:yourone/gen/assets.gen.dart';
import 'package:yourone/theme/app_color.dart';
import 'package:yourone/theme/app_dimen.dart';
import 'package:yourone/theme/text_styles.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? right;
  final double height;
  final VoidCallback? rightAction;
  final VoidCallback? backAction;
  String title;
  String subTitle;

  AppAppBar({
    super.key,
    this.height = 100,
    this.right,
    required this.title,
    required this.subTitle,
    this.rightAction,
    this.backAction,
  });

  factory AppAppBar.withSkip(
      {VoidCallback? rightAction,
      VoidCallback? backAction,
      String? title,
      String? subTitle}) {
    return AppAppBar(
      right: Text('Skip',
          style: TextStyles.bold16.copyWith(color: AppColor.primary)),
      title: title ?? '',
      subTitle: subTitle ?? '',
      rightAction: rightAction,
      backAction: backAction,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Container(
        padding: AppDimen.all16,
        height: preferredSize.height,
        color: Colors.transparent,
        alignment: Alignment.center,
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (Navigator.canPop(context) || backAction != null)
                  AppIcon(
                      icon: Assets.icons.back.svg(color: theme.primaryColor),
                      onTap: () {
                        backAction != null
                            ? backAction?.call()
                            : context.router.navigateBack();
                      }),
                if (right != null && rightAction != null)
                  GestureDetector(
                    onTap: () {
                      rightAction?.call();
                    },
                    child: right ?? const SizedBox(),
                  ),
                if (right == null || rightAction == null) const SizedBox(),
              ],
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    style: TextStyles.bold24,
                  ),
                  Text(
                    subTitle,
                    style: TextStyles.normal16,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
