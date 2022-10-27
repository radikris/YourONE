import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:yourone/entities/common_attributes.dart';
import 'package:yourone/entities/enum_types/enums.dart';
import 'package:yourone/entities/file_or_url.dart';

part 'match.freezed.dart';
part 'match.g.dart';

@freezed
class Match with _$Match {
  const factory Match(
      {@JsonKey(name: 'pct')
          int? pct,
      @JsonKey(name: 'commonAttributes', defaultValue: <CommonAttributes>[])
          List<CommonAttributes>? commonAttributes}) = _Match;

  factory Match.fromJson(Map<String, dynamic> json) => _$MatchFromJson(json);
}
