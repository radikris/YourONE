import 'package:flutter/material.dart';
import 'package:yourone/theme/app_color.dart';
import 'package:yourone/theme/app_dimen.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({Key? key, required this.icon, this.onTap}) : super(key: key);

  final Widget icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: AppDimen.all16,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey[200]!,
                blurRadius: 2.0,
                offset: const Offset(0.0, 4))
          ],
          border: Border.all(width: 1, color: AppColor.gray),
          borderRadius: BorderRadius.circular(12),
        ),
        child: icon,
      ),
    );
  }
}
