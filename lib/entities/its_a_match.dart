// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:yourone/entities/user_profile.dart';

class ItsAMatchEntity {
  final UserProfile partner;
  final UserProfile me;
  ItsAMatchEntity({
    required this.partner,
    required this.me,
  });

  ItsAMatchEntity copyWith({
    UserProfile? partner,
    UserProfile? me,
  }) {
    return ItsAMatchEntity(
      partner: partner ?? this.partner,
      me: me ?? this.me,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partner': partner.toJson(),
      'me': me.toJson(),
    };
  }

  factory ItsAMatchEntity.fromMap(Map<String, dynamic> map) {
    return ItsAMatchEntity(
      partner: UserProfile.fromJson(map['partner'] as Map<String, dynamic>),
      me: UserProfile.fromJson(map['me'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory ItsAMatchEntity.fromJson(String source) =>
      ItsAMatchEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ItsAMatchEntity(partner: $partner, me: $me)';

  @override
  bool operator ==(covariant ItsAMatchEntity other) {
    if (identical(this, other)) return true;

    return other.partner == partner && other.me == me;
  }

  @override
  int get hashCode => partner.hashCode ^ me.hashCode;
}
