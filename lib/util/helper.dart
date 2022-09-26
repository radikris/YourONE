import 'dart:math';

import 'package:flutter/material.dart';

typedef WidgetChild<T> = Widget Function(T e);

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
Random _rnd = Random();

String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
    length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

SizedBox addPaddingWhenKeyboardAppears() {
  final viewInsets = EdgeInsets.fromWindowPadding(
    WidgetsBinding.instance.window.viewInsets,
    WidgetsBinding.instance.window.devicePixelRatio,
  );

  final bottomOffset = viewInsets.bottom;
  const hiddenKeyboard = 0.0; // Always 0 if keyboard is not opened
  final isNeedPadding = bottomOffset != hiddenKeyboard;

  return SizedBox(height: isNeedPadding ? bottomOffset : hiddenKeyboard);
}
