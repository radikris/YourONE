import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:yourone/entities/enum_types/enums.dart';
import 'package:yourone/entities/file_or_url.dart';
import 'package:yourone/entities/match.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'phototodo') List<FileOrUrl>? images,
      @JsonKey(name: 'minAge') @Default(16) int minAge,
      @JsonKey(name: 'maxAge') @Default(100) int maxAge,
      @JsonKey(name: 'bio') String? bio,
      @JsonKey(name: 'age') int? age,
      @JsonKey(name: 'city') String? address,
      @JsonKey(name: 'chemistry') int? chemistry,
      @JsonKey(name: 'gender') Gender? gender,
      @JsonKey(name: 'jobType') JobType? jobType,
      @JsonKey(name: 'eduLevel') EducationLevel? educationLevel,
      @JsonKey(name: 'cigarettes') Cigarettes? cigarettes,
      @JsonKey(name: 'alcohol') Alcohol? alcohol,
      @JsonKey(name: 'childrenNumber') Children? children,
      @JsonKey(name: 'maritalStatus') Marriage? marriage,
      @JsonKey(name: 'musicalTaste') List<MusicTaste>? musicTaste,
      @JsonKey(name: 'filmTaste') List<MovieGenre>? movieGenre,
      @JsonKey(name: 'religion') Religion? religion,
      @JsonKey(name: 'horoscope') Horoscope? horoscope,
      @JsonKey(name: 'languages') List<Languages>? languages,
      @JsonKey(name: 'interests') List<Hobbies>? hobbies,
      @JsonKey(name: 'tattoo') Tattoo? tattoo,
      @JsonKey(name: 'piercing') Piercing? piercing,
      @JsonKey(name: 'hairColour') HairColor? hairColor,
      @JsonKey(name: 'eyeColour') EyeColor? eyeColor,
      @JsonKey(name: 'glasses') Glasses? glasses,
      @JsonKey(name: 'sportiness') Sportiness? sportiness,
      @JsonKey(name: 'shape') Shape? shape,
      @JsonKey(name: 'facialHair') FacialHair? facialHair,
      @JsonKey(name: 'breastSize') BreastSize? breastSize,
      @JsonKey(name: 'match') final Match? match}) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}
