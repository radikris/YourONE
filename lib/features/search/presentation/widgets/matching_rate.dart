import 'package:flutter/material.dart';
import 'package:yourone/common/app_icon.dart';
import 'package:yourone/extensions/extensions.dart';
import 'package:yourone/theme/text_styles.dart';

class MatchingRate extends StatelessWidget {
  const MatchingRate({Key? key, required this.calculatedMatch})
      : super(key: key);

  final double calculatedMatch;

  @override
  Widget build(BuildContext context) {
    return AppIcon(
        icon: Text(
      '${(calculatedMatch.ceil())}%',
      style: TextStyles.bold16.copyWith(
        color: calculatedMatch.toMatchingColor(),
      ),
    ));
  }
}
