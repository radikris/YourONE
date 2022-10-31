// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Match _$$_MatchFromJson(Map<String, dynamic> json) => _$_Match(
      pct: json['pct'] as int?,
      commonAttributes: (json['commonAttributes'] as List<dynamic>?)
              ?.map((e) => CommonAttributes.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_MatchToJson(_$_Match instance) => <String, dynamic>{
      'pct': instance.pct,
      'commonAttributes':
          instance.commonAttributes?.map((e) => e.toJson()).toList(),
    };
