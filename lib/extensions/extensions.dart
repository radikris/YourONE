import 'dart:io';

import 'package:image_picker/image_picker.dart';

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}

extension XFileX on XFile {
  File get toFile => File(path);
}
