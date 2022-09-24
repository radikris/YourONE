import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

mixin TextStyles {
  static TextStyle normal12 = const TextStyle(
    fontSize: 12,
    height: 1.5,
    fontWeight: FontWeight.normal,
  );
  static TextStyle normal14 = const TextStyle(
    fontSize: 14,
    height: 1.5,
    fontWeight: FontWeight.normal,
  );
  static TextStyle normal16 = const TextStyle(
    fontSize: 16,
    height: 1.5,
    fontWeight: FontWeight.normal,
  );
  static TextStyle normal18 = const TextStyle(
    fontSize: 18,
    height: 1.5,
    fontWeight: FontWeight.normal,
  );

  static TextStyle bold12 = const TextStyle(
    fontSize: 12,
    height: 1.5,
    fontWeight: FontWeight.bold,
  );
  static TextStyle bold14 = const TextStyle(
    fontSize: 14,
    height: 1.5,
    fontWeight: FontWeight.bold,
  );
  static TextStyle bold16 = const TextStyle(
    fontSize: 16,
    height: 1.5,
    fontWeight: FontWeight.bold,
  );
  static TextStyle bold18 = const TextStyle(
    fontSize: 18,
    height: 1.5,
    fontWeight: FontWeight.bold,
  );
  static TextStyle bold24 = const TextStyle(
    fontSize: 24,
    height: 1.5,
    fontWeight: FontWeight.bold,
  );
  static TextStyle bold34 = const TextStyle(
    fontSize: 34,
    height: 1.5,
    fontWeight: FontWeight.bold,
  );
}

final allTextStyles = [
  TextStyles.normal12,
  TextStyles.normal14,
  TextStyles.normal16,
  TextStyles.normal18,
  TextStyles.bold12,
  TextStyles.bold14,
  TextStyles.bold16,
  TextStyles.bold18,
  TextStyles.bold24,
  TextStyles.bold34,
];
