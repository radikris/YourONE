// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
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

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'file': file?.readAsBytesSync(),
      'url': url,
    };
  }

  factory FileOrUrl.fromMap(Map<String, dynamic> map) {
    return FileOrUrl(
      id: map['id'] != null ? map['id'] as int : null,
      file: map['file'] != null
          ? File.fromRawPath(map['file'] as Uint8List)
          : null,
      url: map['url'] != null ? map['url'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory FileOrUrl.fromJson(String source) =>
      FileOrUrl.fromMap(json.decode(source) as Map<String, dynamic>);
}
