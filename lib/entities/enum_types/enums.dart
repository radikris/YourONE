//https://stackoverflow.com/questions/55465943/json-serializable-enum-values-in-dart
//https://stackoverflow.com/a/70879873

import 'dart:math';

import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'enums.freezed.dart';
part 'enums.g.dart';

enum JobType {
  @JsonValue(0)
  unemployed,
  @JsonValue(1)
  administrationBusinessAndManagement,
  @JsonValue(2)
  alternativeTherapies,
  @JsonValue(3)
  animalsLandAndEnvironment,
  @JsonValue(4)
  computingAndIct,
  @JsonValue(5)
  constructionAndBuilding,
  @JsonValue(6)
  designArtsAndCrafts,
  @JsonValue(7)
  educationAndTraining,
  @JsonValue(8)
  engineering,
  @JsonValue(9)
  facilitiesAndPropertyServices,
  @JsonValue(10)
  financialServices,
  @JsonValue(11)
  garageServices,
  @JsonValue(12)
  hairdressingAndBeauty,
  @JsonValue(13)
  healthcare,
  @JsonValue(14)
  heritageCultureAndLibraries,
  @JsonValue(15)
  hospitalityCateringAndTourism,
  @JsonValue(16)
  languages,
  @JsonValue(17)
  legalAndCourtServices,
  @JsonValue(18)
  manufacturingAndProduction,
  @JsonValue(19)
  performingArtsAndMedia,
  @JsonValue(20)
  printAndPublishingMarketingAndAdvertising,
  @JsonValue(21)
  retailAndCustomerServices,
  @JsonValue(22)
  scienceMathematicsAndStatistics,
  @JsonValue(23)
  securityUniformedAndProtectiveServices,
  @JsonValue(24)
  socialSciencesAndReligion,
  @JsonValue(25)
  socialWorkAndCaringServices,
  @JsonValue(26)
  sportAndLeisure,
  @JsonValue(27)
  transportDistributionAndLogistics,
}

enum EducationLevel {
  @JsonValue(0)
  primaryShcool,
  @JsonValue(1)
  secondarySchool,
  @JsonValue(2)
  vocationalSchool,
  @JsonValue(3)
  highSchool,
  @JsonValue(4)
  college,
  @JsonValue(5)
  universityBsc,
  @JsonValue(6)
  universityMsc,
  @JsonValue(7)
  universityPhd
}

enum Cigarettes {
  @JsonValue(0)
  never,
  @JsonValue(1)
  occasionally,
  @JsonValue(2)
  justWhileGoingOut,
  @JsonValue(3)
  eCigarettesOrVape,
  @JsonValue(4)
  everyDay,
}

enum Alcohol {
  @JsonValue(0)
  never,
  @JsonValue(1)
  occasionally,
  @JsonValue(2)
  justWhileGoingOut,
  @JsonValue(3)
  everyDay,
}

enum Children {
  @JsonValue(0)
  never,
  @JsonValue(1)
  maybe,
  @JsonValue(2)
  alreadyHave,
  @JsonValue(3)
  wantToHaveLater
}

enum Marriage {
  @JsonValue(0)
  never,
  @JsonValue(1)
  maybe,
  @JsonValue(2)
  divorced,
  @JsonValue(3)
  later,
  @JsonValue(4)
  widow
}

enum MusicTaste {
  @JsonValue(0)
  ballroom,
  @JsonValue(1)
  classical,
  @JsonValue(2)
  country,
  @JsonValue(3)
  dance,
  @JsonValue(4)
  electronic,
  @JsonValue(5)
  funk,
  @JsonValue(6)
  hipHop,
  @JsonValue(7)
  jazz,
  @JsonValue(8)
  latin,
  @JsonValue(9)
  pop,
  @JsonValue(10)
  rb,
  @JsonValue(11)
  reggae,
  @JsonValue(12)
  rock,
  @JsonValue(13)
  unknown,
  @JsonValue(14)
  world,
}

enum MovieGenre {
  @JsonValue(0)
  action,
  @JsonValue(1)
  animation,
  @JsonValue(2)
  comedy,
  @JsonValue(3)
  crime,
  @JsonValue(4)
  drama,
  @JsonValue(5)
  experimental,
  @JsonValue(6)
  fantasy,
  @JsonValue(7)
  historical,
  @JsonValue(8)
  horror,
  @JsonValue(9)
  romance,
  @JsonValue(10)
  scienceFiction,
  @JsonValue(11)
  thriller,
  @JsonValue(12)
  western,
  @JsonValue(13)
  other,
}

enum Religion {
  @JsonValue(0)
  animist,
  @JsonValue(1)
  bahai,
  @JsonValue(2)
  benzhu,
  @JsonValue(3)
  buddhist,
  @JsonValue(4)
  caodaism,
  @JsonValue(5)
  chineseFolk,
  @JsonValue(6)
  christian,
  @JsonValue(7)
  confucian,
  @JsonValue(8)
  hindu,
  @JsonValue(9)
  jain,
  @JsonValue(10)
  jewish,
  @JsonValue(11)
  multifaith,
  @JsonValue(12)
  muslim,
  @JsonValue(13)
  other,
  @JsonValue(14)
  pagan,
  @JsonValue(15)
  pastafarian,
  @JsonValue(16)
  scientologist,
  @JsonValue(17)
  shinto,
  @JsonValue(18)
  sikh,
  @JsonValue(19)
  spiritualist,
  @JsonValue(20)
  taoist,
  @JsonValue(21)
  unitarianUniversalist,
  @JsonValue(22)
  voodoo,
  @JsonValue(23)
  yazidi,
  @JsonValue(24)
  zoroastrian,
}

enum Horoscope {
  @JsonValue(0)
  aries,
  @JsonValue(1)
  taurus,
  @JsonValue(2)
  gemini,
  @JsonValue(3)
  cancer,
  @JsonValue(4)
  leo,
  @JsonValue(5)
  virgo,
  @JsonValue(6)
  libra,
  @JsonValue(7)
  scorpio,
  @JsonValue(8)
  sagittarius,
  @JsonValue(9)
  capricorn,
  @JsonValue(10)
  aquarius,
  @JsonValue(11)
  pisces
}

enum Languages {
  @JsonValue(0)
  hungarian,
  @JsonValue(1)
  english,
  @JsonValue(2)
  german,
  @JsonValue(3)
  danish,
  @JsonValue(4)
  dutch,
  @JsonValue(5)
  finnish,
  @JsonValue(6)
  french,
  @JsonValue(7)
  italian,
  @JsonValue(8)
  norwegian,
  @JsonValue(9)
  portuguese,
  @JsonValue(10)
  spanish,
  @JsonValue(11)
  swedish,
  @JsonValue(12)
  arabian,
}

enum Hobbies {
  @JsonValue(0)
  cookingAndbaking,
  @JsonValue(1)
  outdoorActivities,
  @JsonValue(2)
  videoGaming,
  @JsonValue(3)
  diyAndArtsCrafts,
  @JsonValue(4)
  gardeningAndPlants,
  @JsonValue(5)
  boardGamesCardGames,
  @JsonValue(6)
  techComputers,
  @JsonValue(7)
  doingSportsAndFitness,
  @JsonValue(8)
  meditationWellness,
  @JsonValue(9)
  carsVehicles,
  @JsonValue(10)
  makingMusic,
  @JsonValue(11)
  dontKnow,
}

enum Gender {
  @JsonValue(0)
  woman,
  @JsonValue(1)
  man,
  @JsonValue(2)
  other
}

enum Tattoo {
  @JsonValue(0)
  never,
  @JsonValue(1)
  maybe,
  @JsonValue(2)
  alreadyHave,
  @JsonValue(3)
  wantToHaveLater
}

enum Piercing {
  @JsonValue(0)
  never,
  @JsonValue(1)
  maybe,
  @JsonValue(2)
  alreadyHave,
  @JsonValue(3)
  wantToHaveLater
}

enum HairColor {
  @JsonValue(0)
  black,
  @JsonValue(1)
  brown,
  @JsonValue(2)
  blond,
  @JsonValue(3)
  gray,
  @JsonValue(4)
  red,
  @JsonValue(5)
  dyed,
  @JsonValue(6)
  other
}

enum EyeColor {
  @JsonValue(0)
  brown,
  @JsonValue(1)
  green,
  @JsonValue(2)
  black,
  @JsonValue(3)
  blue,
  @JsonValue(4)
  other
}

enum Glasses {
  @JsonValue(0)
  no,
  @JsonValue(1)
  yes,
  @JsonValue(2)
  nearSighted,
  @JsonValue(3)
  farSighted
}

enum Sportiness {
  @JsonValue(0)
  never,
  @JsonValue(1)
  sometimes,
  @JsonValue(2)
  timesAWeek13,
  @JsonValue(3)
  everyDay,
  @JsonValue(4)
  professionaly
}

enum Shape {
  @JsonValue(0)
  chubby,
  @JsonValue(1)
  fat,
  @JsonValue(2)
  skinny,
  @JsonValue(3)
  normal,
  @JsonValue(4)
  muscular,
  @JsonValue(5)
  athletic
}

enum FacialHair {
  @JsonValue(0)
  none,
  @JsonValue(1)
  moustache,
  @JsonValue(2)
  beard,
}

enum BreastSize {
  @JsonValue(0)
  aa,
  @JsonValue(1)
  a,
  @JsonValue(2)
  b,
  @JsonValue(3)
  c,
  @JsonValue(4)
  d,
  @JsonValue(5)
  e,
  @JsonValue(6)
  f
}

@freezed
class Enums with _$Enums {
  const Enums._(); // Added constructor

  const factory Enums(
      {@JsonKey(name: 'gender') Gender? gender,
      @JsonKey(name: 'jobType') JobType? jobType,
      @JsonKey(name: 'eduLevel') EducationLevel? educationLevel,
      @JsonKey(name: 'cigarettes') Cigarettes? cigarettes,
      @JsonKey(name: 'alcohol') Alcohol? alcohol,
      @JsonKey(name: 'childrenNumber') Children? children,
      @JsonKey(name: 'maritalStatus') Marriage? marriage,
      @JsonKey(name: 'musicalTaste') MusicTaste? musicTaste,
      @JsonKey(name: 'filmTaste') MovieGenre? movieGenre,
      @JsonKey(name: 'religion') Religion? religion,
      @JsonKey(name: 'horoscope') Horoscope? horoscope,
      @JsonKey(name: 'languages') Languages? languages,
      @JsonKey(name: 'interests') Hobbies? hobbies,
      @JsonKey(name: 'tattoo') Tattoo? tattoo,
      @JsonKey(name: 'piercing') Piercing? piercing,
      @JsonKey(name: 'hairColour') HairColor? hairColor,
      @JsonKey(name: 'eyeColour') EyeColor? eyeColor,
      @JsonKey(name: 'glasses') Glasses? glasses,
      @JsonKey(name: 'sportiness') Sportiness? sportiness,
      @JsonKey(name: 'shape') Shape? shape,
      @JsonKey(name: 'facialHair') FacialHair? facialHair,
      @JsonKey(name: 'breastSize') BreastSize? breastSize}) = _Enums;

  factory Enums.fromJson(Map<String, dynamic> json) => _$EnumsFromJson(json);

  dynamic getProp(String key) => <String, dynamic>{
        'gender': gender,
        'jobType': jobType,
        'eduLevel': educationLevel,
        'cigarettes': cigarettes,
        'alcohol': alcohol,
        'childrenNumber': children,
        'maritalStatus': marriage,
        'musicalTaste': musicTaste,
        'filmTaste': movieGenre,
        'religion': religion,
        'horoscope': horoscope,
        'languages': languages,
        'interests': hobbies,
        'tattoo': tattoo,
        'piercing': piercing,
        'hairColour': hairColor,
        'eyeColour': eyeColor,
        'glasses': glasses,
        'sportiness': sportiness,
        'shape': shape,
        'facialHair': facialHair,
        'breastSize': breastSize,
      }[key];
}
