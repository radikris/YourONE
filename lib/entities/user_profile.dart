import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:yourone/entities/enum_types/enums.dart';
import 'package:yourone/entities/file_or_url.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile(
      {@JsonKey(name: 'name') String? name,
      List<FileOrUrl>? images,
      @Default(16) int minAge,
      @Default(100) int maxAge,
      String? bio,
      int? age,
      String? address,
      int? chemistry,
      Gender? gender,
      JobType? jobType,
      EducationLevel? educationLevel,
      Cigarettes? cigarettes,
      Alcohol? alcohol,
      Children? children,
      Marriage? marriage,
      List<MusicTaste>? musicTaste,
      List<MovieGenre>? movieGenre,
      Religion? religion,
      Horoscope? horoscope,
      List<Languages>? languages,
      List<Hobbies>? hobbies,
      Tattoo? tattoo,
      Piercing? piercing,
      HairColor? hairColor,
      EyeColor? eyeColor,
      Glasses? glasses,
      Sportiness? sportiness,
      Shape? shape,
      FacialHair? facialHair,
      BreastSize? breastSize}) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}
