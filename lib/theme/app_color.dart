import 'package:flutter/material.dart';

mixin AppColor {
  static final black70 = const Color(0xff000000).withOpacity(0.7);
  static const black = Color(0xff000000);
  static const primary = Color(0xffE94057);
  static final primary10 = Color.fromARGB(197, 255, 197, 197);
  static const secondary = Color(0xff535F70);
  static const border = Color(0xffE8E6EA);
  static const white = Color(0xffFFFFFF);
  static const gray = Color(0xffF3F3F3);
  static final MaterialColor colorSwatch =
      MaterialColor(0xffE94057, _primaryMap);
  static const like = Color.fromARGB(255, 86, 173, 125);
  static const dislike = Color.fromARGB(255, 249, 99, 69);

  static final matchRateHigh = Color.fromARGB(213, 98, 216, 110);
  static final matchRateMedium = Color.fromARGB(255, 251, 173, 85);
  static final matchRateLow = Color.fromARGB(244, 172, 74, 55);
}

Map<int, Color> _primaryMap = {
  50: const Color.fromRGBO(233, 64, 87, .1),
  100: const Color.fromRGBO(233, 64, 87, .2),
  200: const Color.fromRGBO(233, 64, 87, .3),
  300: const Color.fromRGBO(233, 64, 87, .4),
  400: const Color.fromRGBO(233, 64, 87, .5),
  500: const Color.fromRGBO(233, 64, 87, .6),
  600: const Color.fromRGBO(233, 64, 87, .7),
  700: const Color.fromRGBO(233, 64, 87, .8),
  800: const Color.fromRGBO(233, 64, 87, .9),
  900: const Color.fromRGBO(233, 64, 87, 1),
};
