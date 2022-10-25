// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfile _$$_UserProfileFromJson(Map<String, dynamic> json) =>
    _$_UserProfile(
      name: json['name'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => FileOrUrl.fromJson(e as String))
          .toList(),
      minAge: json['minAge'] as int? ?? 16,
      maxAge: json['maxAge'] as int? ?? 100,
      bio: json['bio'] as String?,
      age: json['age'] as int?,
      address: json['address'] as String?,
      chemistry: json['chemistry'] as int?,
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      jobType: $enumDecodeNullable(_$JobTypeEnumMap, json['jobType']),
      educationLevel:
          $enumDecodeNullable(_$EducationLevelEnumMap, json['educationLevel']),
      cigarettes: $enumDecodeNullable(_$CigarettesEnumMap, json['cigarettes']),
      alcohol: $enumDecodeNullable(_$AlcoholEnumMap, json['alcohol']),
      children: $enumDecodeNullable(_$ChildrenEnumMap, json['children']),
      marriage: $enumDecodeNullable(_$MarriageEnumMap, json['marriage']),
      musicTaste: (json['musicTaste'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$MusicTasteEnumMap, e))
          .toList(),
      movieGenre: (json['movieGenre'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$MovieGenreEnumMap, e))
          .toList(),
      religion: $enumDecodeNullable(_$ReligionEnumMap, json['religion']),
      horoscope: $enumDecodeNullable(_$HoroscopeEnumMap, json['horoscope']),
      languages: (json['languages'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$LanguagesEnumMap, e))
          .toList(),
      hobbies: (json['hobbies'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$HobbiesEnumMap, e))
          .toList(),
      tattoo: $enumDecodeNullable(_$TattooEnumMap, json['tattoo']),
      piercing: $enumDecodeNullable(_$PiercingEnumMap, json['piercing']),
      hairColor: $enumDecodeNullable(_$HairColorEnumMap, json['hairColor']),
      eyeColor: $enumDecodeNullable(_$EyeColorEnumMap, json['eyeColor']),
      glasses: $enumDecodeNullable(_$GlassesEnumMap, json['glasses']),
      sportiness: $enumDecodeNullable(_$SportinessEnumMap, json['sportiness']),
      shape: $enumDecodeNullable(_$ShapeEnumMap, json['shape']),
      facialHair: $enumDecodeNullable(_$FacialHairEnumMap, json['facialHair']),
      breastSize: $enumDecodeNullable(_$BreastSizeEnumMap, json['breastSize']),
    );

Map<String, dynamic> _$$_UserProfileToJson(_$_UserProfile instance) =>
    <String, dynamic>{
      'name': instance.name,
      'images': instance.images,
      'minAge': instance.minAge,
      'maxAge': instance.maxAge,
      'bio': instance.bio,
      'age': instance.age,
      'address': instance.address,
      'chemistry': instance.chemistry,
      'gender': _$GenderEnumMap[instance.gender],
      'jobType': _$JobTypeEnumMap[instance.jobType],
      'educationLevel': _$EducationLevelEnumMap[instance.educationLevel],
      'cigarettes': _$CigarettesEnumMap[instance.cigarettes],
      'alcohol': _$AlcoholEnumMap[instance.alcohol],
      'children': _$ChildrenEnumMap[instance.children],
      'marriage': _$MarriageEnumMap[instance.marriage],
      'musicTaste':
          instance.musicTaste?.map((e) => _$MusicTasteEnumMap[e]!).toList(),
      'movieGenre':
          instance.movieGenre?.map((e) => _$MovieGenreEnumMap[e]!).toList(),
      'religion': _$ReligionEnumMap[instance.religion],
      'horoscope': _$HoroscopeEnumMap[instance.horoscope],
      'languages':
          instance.languages?.map((e) => _$LanguagesEnumMap[e]!).toList(),
      'hobbies': instance.hobbies?.map((e) => _$HobbiesEnumMap[e]!).toList(),
      'tattoo': _$TattooEnumMap[instance.tattoo],
      'piercing': _$PiercingEnumMap[instance.piercing],
      'hairColor': _$HairColorEnumMap[instance.hairColor],
      'eyeColor': _$EyeColorEnumMap[instance.eyeColor],
      'glasses': _$GlassesEnumMap[instance.glasses],
      'sportiness': _$SportinessEnumMap[instance.sportiness],
      'shape': _$ShapeEnumMap[instance.shape],
      'facialHair': _$FacialHairEnumMap[instance.facialHair],
      'breastSize': _$BreastSizeEnumMap[instance.breastSize],
    };

const _$GenderEnumMap = {
  Gender.woman: 0,
  Gender.man: 1,
  Gender.other: 2,
};

const _$JobTypeEnumMap = {
  JobType.unemployed: 0,
  JobType.administrationBusinessAndManagement: 1,
  JobType.alternativeTherapies: 2,
  JobType.animalsLandAndEnvironment: 3,
  JobType.computingAndIct: 4,
  JobType.constructionAndBuilding: 5,
  JobType.designArtsAndCrafts: 6,
  JobType.educationAndTraining: 7,
  JobType.engineering: 8,
  JobType.facilitiesAndPropertyServices: 9,
  JobType.financialServices: 10,
  JobType.garageServices: 11,
  JobType.hairdressingAndBeauty: 12,
  JobType.healthcare: 13,
  JobType.heritageCultureAndLibraries: 14,
  JobType.hospitalityCateringAndTourism: 15,
  JobType.languages: 16,
  JobType.legalAndCourtServices: 17,
  JobType.manufacturingAndProduction: 18,
  JobType.performingArtsAndMedia: 19,
  JobType.printAndPublishingMarketingAndAdvertising: 20,
  JobType.retailAndCustomerServices: 21,
  JobType.scienceMathematicsAndStatistics: 22,
  JobType.securityUniformedAndProtectiveServices: 23,
  JobType.socialSciencesAndReligion: 24,
  JobType.socialWorkAndCaringServices: 25,
  JobType.sportAndLeisure: 26,
  JobType.transportDistributionAndLogistics: 27,
};

const _$EducationLevelEnumMap = {
  EducationLevel.primaryShcool: 0,
  EducationLevel.secondarySchool: 1,
  EducationLevel.vocationalSchool: 2,
  EducationLevel.highSchool: 3,
  EducationLevel.college: 4,
  EducationLevel.universityBsc: 5,
  EducationLevel.universityMsc: 6,
  EducationLevel.universityPhd: 7,
};

const _$CigarettesEnumMap = {
  Cigarettes.never: 0,
  Cigarettes.occasionally: 1,
  Cigarettes.justWhileGoingOut: 2,
  Cigarettes.eCigarettesOrVape: 3,
  Cigarettes.everyDay: 4,
};

const _$AlcoholEnumMap = {
  Alcohol.never: 0,
  Alcohol.occasionally: 1,
  Alcohol.justWhileGoingOut: 2,
  Alcohol.everyDay: 3,
};

const _$ChildrenEnumMap = {
  Children.never: 0,
  Children.maybe: 1,
  Children.alreadyHave: 2,
  Children.wantToHaveLater: 3,
};

const _$MarriageEnumMap = {
  Marriage.never: 0,
  Marriage.maybe: 1,
  Marriage.divorced: 2,
  Marriage.later: 3,
  Marriage.widow: 4,
};

const _$MusicTasteEnumMap = {
  MusicTaste.ballroom: 0,
  MusicTaste.classical: 1,
  MusicTaste.country: 2,
  MusicTaste.dance: 3,
  MusicTaste.electronic: 4,
  MusicTaste.funk: 5,
  MusicTaste.hipHop: 6,
  MusicTaste.jazz: 7,
  MusicTaste.latin: 8,
  MusicTaste.pop: 9,
  MusicTaste.rb: 10,
  MusicTaste.reggae: 11,
  MusicTaste.rock: 12,
  MusicTaste.unknown: 13,
  MusicTaste.world: 14,
};

const _$MovieGenreEnumMap = {
  MovieGenre.action: 0,
  MovieGenre.animation: 1,
  MovieGenre.comedy: 2,
  MovieGenre.crime: 3,
  MovieGenre.drama: 4,
  MovieGenre.experimental: 5,
  MovieGenre.fantasy: 6,
  MovieGenre.historical: 7,
  MovieGenre.horror: 8,
  MovieGenre.romance: 9,
  MovieGenre.scienceFiction: 10,
  MovieGenre.thriller: 11,
  MovieGenre.western: 12,
  MovieGenre.other: 13,
};

const _$ReligionEnumMap = {
  Religion.animist: 0,
  Religion.bahai: 1,
  Religion.benzhu: 2,
  Religion.buddhist: 3,
  Religion.caodaism: 4,
  Religion.chineseFolk: 5,
  Religion.christian: 6,
  Religion.confucian: 7,
  Religion.hindu: 8,
  Religion.jain: 9,
  Religion.jewish: 10,
  Religion.multifaith: 11,
  Religion.muslim: 12,
  Religion.other: 13,
  Religion.pagan: 14,
  Religion.pastafarian: 15,
  Religion.scientologist: 16,
  Religion.shinto: 17,
  Religion.sikh: 18,
  Religion.spiritualist: 19,
  Religion.taoist: 20,
  Religion.unitarianUniversalist: 21,
  Religion.voodoo: 22,
  Religion.yazidi: 23,
  Religion.zoroastrian: 24,
};

const _$HoroscopeEnumMap = {
  Horoscope.aries: 0,
  Horoscope.taurus: 1,
  Horoscope.gemini: 2,
  Horoscope.cancer: 3,
  Horoscope.leo: 4,
  Horoscope.virgo: 5,
  Horoscope.libra: 6,
  Horoscope.scorpio: 7,
  Horoscope.sagittarius: 8,
  Horoscope.capricorn: 9,
  Horoscope.aquarius: 10,
  Horoscope.pisces: 11,
};

const _$LanguagesEnumMap = {
  Languages.hungarian: 0,
  Languages.english: 1,
  Languages.german: 2,
  Languages.danish: 3,
  Languages.dutch: 4,
  Languages.finnish: 5,
  Languages.french: 6,
  Languages.italian: 7,
  Languages.norwegian: 8,
  Languages.portuguese: 9,
  Languages.spanish: 10,
  Languages.swedish: 11,
  Languages.arabian: 12,
};

const _$HobbiesEnumMap = {
  Hobbies.cookingAndbaking: 0,
  Hobbies.outdoorActivities: 1,
  Hobbies.videoGaming: 2,
  Hobbies.diyAndArtsCrafts: 3,
  Hobbies.gardeningAndPlants: 4,
  Hobbies.boardGamesCardGames: 5,
  Hobbies.techComputers: 6,
  Hobbies.doingSportsAndFitness: 7,
  Hobbies.meditationWellness: 8,
  Hobbies.carsVehicles: 9,
  Hobbies.makingMusic: 10,
  Hobbies.dontKnow: 11,
};

const _$TattooEnumMap = {
  Tattoo.never: 0,
  Tattoo.maybe: 1,
  Tattoo.alreadyHave: 2,
  Tattoo.wantToHaveLater: 3,
};

const _$PiercingEnumMap = {
  Piercing.never: 0,
  Piercing.maybe: 1,
  Piercing.alreadyHave: 2,
  Piercing.wantToHaveLater: 3,
};

const _$HairColorEnumMap = {
  HairColor.black: 0,
  HairColor.brown: 1,
  HairColor.blond: 2,
  HairColor.gray: 3,
  HairColor.red: 4,
  HairColor.dyed: 5,
  HairColor.other: 6,
};

const _$EyeColorEnumMap = {
  EyeColor.brown: 0,
  EyeColor.green: 1,
  EyeColor.black: 2,
  EyeColor.blue: 3,
  EyeColor.other: 4,
};

const _$GlassesEnumMap = {
  Glasses.no: 0,
  Glasses.yes: 1,
  Glasses.nearSighted: 2,
  Glasses.farSighted: 3,
};

const _$SportinessEnumMap = {
  Sportiness.never: 0,
  Sportiness.sometimes: 1,
  Sportiness.timesAWeek13: 2,
  Sportiness.everyDay: 3,
  Sportiness.professionaly: 4,
};

const _$ShapeEnumMap = {
  Shape.chubby: 0,
  Shape.fat: 1,
  Shape.skinny: 2,
  Shape.normal: 3,
  Shape.muscular: 4,
  Shape.athletic: 5,
};

const _$FacialHairEnumMap = {
  FacialHair.none: 0,
  FacialHair.moustache: 1,
  FacialHair.beard: 2,
};

const _$BreastSizeEnumMap = {
  BreastSize.aa: 0,
  BreastSize.a: 1,
  BreastSize.b: 2,
  BreastSize.c: 3,
  BreastSize.d: 4,
  BreastSize.e: 5,
  BreastSize.f: 6,
};
