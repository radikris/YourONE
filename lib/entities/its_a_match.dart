// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:yourone/entities/user_profile.dart';

class ItsAMatch {
  final UserProfile partner;
  final UserProfile me;
  ItsAMatch({
    required this.partner,
    required this.me,
  });

  ItsAMatch copyWith({
    UserProfile? partner,
    UserProfile? me,
  }) {
    return ItsAMatch(
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

  factory ItsAMatch.fromMap(Map<String, dynamic> map) {
    return ItsAMatch(
      partner: UserProfile.fromJson(map['partner'] as Map<String, dynamic>),
      me: UserProfile.fromJson(map['me'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory ItsAMatch.fromJson(String source) =>
      ItsAMatch.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ItsAMatch(partner: $partner, me: $me)';

  @override
  bool operator ==(covariant ItsAMatch other) {
    if (identical(this, other)) return true;

    return other.partner == partner && other.me == me;
  }

  @override
  int get hashCode => partner.hashCode ^ me.hashCode;
}
