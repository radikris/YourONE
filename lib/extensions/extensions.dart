import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:yourone/entities/file_or_url.dart';
import 'package:yourone/theme/app_color.dart';

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}

extension XFileX on XFile {
  File get toFile => File(path);
}

extension SwappableList<E> on List<E> {
  void swap(int first, int second) {
    final temp = this[first];
    this[first] = this[second];
    this[second] = temp;
  }
}

extension SwapIdFileOrUrlListX on List<FileOrUrl> {
  void swap(int first, int second) {
    final firstId = this[first].id;
    final secondId = this[second].id;
    this[second].id = firstId;
    this[first].id = secondId;
  }
}

extension MatchRateDoubleX on double {
  Color toMatchingColor() {
    return this > 80
        ? AppColor.matchRateHigh
        : this > 50
            ? AppColor.matchRateMedium
            : AppColor.matchRateLow;
  }
}
