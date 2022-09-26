import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:yourone/models/file_or_url.dart';

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
