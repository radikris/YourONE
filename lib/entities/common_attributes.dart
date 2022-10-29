import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:yourone/entities/enum_types/enums.dart';
import 'package:yourone/entities/file_or_url.dart';

part 'common_attributes.g.dart';
part 'common_attributes.freezed.dart';

@freezed
class CommonAttributes with _$CommonAttributes {
  const factory CommonAttributes(
          {@JsonKey(name: 'name') String? name,
          @JsonKey(name: 'matches') Map<String, dynamic>? matches}) =
      _CommonAttributes;

  factory CommonAttributes.fromJson(Map<String, dynamic> json) =>
      _$CommonAttributesFromJson(json);
}
