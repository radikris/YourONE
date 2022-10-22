import 'dart:io';

import 'package:flutter/foundation.dart';

class FileOrUrl {
  int? id;
  File? file;
  String? url;

  FileOrUrl({this.id, this.file, this.url});

  bool get isFile => file != null;
  bool get isUrl => url != null;

  bool get isEmpty => file == null && url == null;

  void selectFile(File file) {
    url = null;
    file = file;
  }

  void selectUrl(String url) {
    file = null;
    url = url;
  }
}
