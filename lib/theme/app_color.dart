import 'package:flutter/material.dart';

mixin AppColor {
  static final black70 = const Color(0xff000000).withOpacity(0.7);
  static const black = Color(0xff000000);
  static final primary10 = const Color(0xffE94057).withOpacity(0.1);
  static const primary = Color(0xff000000);
  static const secondary = Color(0xff535F70);
  static const white = Color(0xffFFFFFF);
  static final MaterialColor colorSwatch =
      MaterialColor(0xffE94057, _primaryMap);
  static const like = Color.fromARGB(0, 86, 173, 125);
  static const dislike = Color.fromARGB(0, 235, 96, 27);
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
