// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'your_one_service.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginDTO _$LoginDTOFromJson(Map<String, dynamic> json) => LoginDTO(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$LoginDTOToJson(LoginDTO instance) => <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

MessageEntity _$MessageEntityFromJson(Map<String, dynamic> json) =>
    MessageEntity(
      addressee: Person.fromJson(json['addressee'] as Map<String, dynamic>),
      id: json['id'] as num?,
      pair: PairEntity.fromJson(json['pair'] as Map<String, dynamic>),
      sender: Person.fromJson(json['sender'] as Map<String, dynamic>),
      sentTime: DateTime.parse(json['sentTime'] as String),
      state: messageEntityStateFromJson(json['state']),
      text: json['text'] as String,
    );

Map<String, dynamic> _$MessageEntityToJson(MessageEntity instance) =>
    <String, dynamic>{
      'addressee': instance.addressee.toJson(),
      'id': instance.id,
      'pair': instance.pair.toJson(),
      'sender': instance.sender.toJson(),
      'sentTime': instance.sentTime.toIso8601String(),
      'state': messageEntityStateToJson(instance.state),
      'text': instance.text,
    };

PairEntity _$PairEntityFromJson(Map<String, dynamic> json) => PairEntity(
      a: Person.fromJson(json['a'] as Map<String, dynamic>),
      b: Person.fromJson(json['b'] as Map<String, dynamic>),
      id: json['id'] as num,
      responseA: json['responseA'] as bool?,
      responseB: json['responseB'] as bool?,
      state: pairEntityStateFromJson(json['state']),
    );

Map<String, dynamic> _$PairEntityToJson(PairEntity instance) =>
    <String, dynamic>{
      'a': instance.a.toJson(),
      'b': instance.b.toJson(),
      'id': instance.id,
      'responseA': instance.responseA,
      'responseB': instance.responseB,
      'state': pairEntityStateToJson(instance.state),
    };

Person _$PersonFromJson(Map<String, dynamic> json) => Person(
      alcohol: json['alcohol'] as int?,
      bio: json['bio'] as String?,
      birthDate: json['birthDate'] == null
          ? null
          : DateTime.parse(json['birthDate'] as String),
      breastSize: json['breastSize'] as int?,
      childrenNumber: json['childrenNumber'] as int?,
      cigarettes: json['cigarettes'] as int?,
      city: json['city'] as String?,
      eduLevel: json['eduLevel'] as int?,
      email: json['email'] as String,
      eyeColour: json['eyeColour'] as int?,
      facialHair: json['facialHair'] as int?,
      filmTaste: json['filmTaste'] as int?,
      gender: json['gender'] as int?,
      glasses: json['glasses'] as int?,
      hairColour: json['hairColour'] as int?,
      height: json['height'] as int?,
      horoscope: json['horoscope'] as int?,
      id: json['id'] as num,
      interests: json['interests'] as int?,
      jobType: json['jobType'] as int?,
      languages: json['languages'] as int?,
      maritalStatus: json['maritalStatus'] as int?,
      musicalTaste: json['musicalTaste'] as int?,
      name: json['name'] as String,
      photo: json['photo'] as String?,
      piercing: json['piercing'] as int?,
      religion: json['religion'] as int?,
      shape: json['shape'] as int?,
      sportiness: json['sportiness'] as int?,
      tattoo: json['tattoo'] as int?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      'alcohol': instance.alcohol,
      'bio': instance.bio,
      'birthDate': _dateToJson(instance.birthDate),
      'breastSize': instance.breastSize,
      'childrenNumber': instance.childrenNumber,
      'cigarettes': instance.cigarettes,
      'city': instance.city,
      'eduLevel': instance.eduLevel,
      'email': instance.email,
      'eyeColour': instance.eyeColour,
      'facialHair': instance.facialHair,
      'filmTaste': instance.filmTaste,
      'gender': instance.gender,
      'glasses': instance.glasses,
      'hairColour': instance.hairColour,
      'height': instance.height,
      'horoscope': instance.horoscope,
      'id': instance.id,
      'interests': instance.interests,
      'jobType': instance.jobType,
      'languages': instance.languages,
      'maritalStatus': instance.maritalStatus,
      'musicalTaste': instance.musicalTaste,
      'name': instance.name,
      'photo': instance.photo,
      'piercing': instance.piercing,
      'religion': instance.religion,
      'shape': instance.shape,
      'sportiness': instance.sportiness,
      'tattoo': instance.tattoo,
      'username': instance.username,
    };

PersonAllDTO _$PersonAllDTOFromJson(Map<String, dynamic> json) => PersonAllDTO(
      id: json['id'] as num?,
      username: json['username'] as String?,
      name: json['name'] as String,
      email: json['email'] as String,
      photo: json['photo'] as String,
      birthDate: DateTime.parse(json['birthDate'] as String),
      height: json['height'] as int?,
      age: json['age'] as int?,
      gender: json['gender'] as int?,
      tattoo: json['tattoo'] as int?,
      eyeColour: json['eyeColour'] as int?,
      hairColour: json['hairColour'] as int?,
      piercing: json['piercing'] as int?,
      glasses: json['glasses'] as int?,
      sportiness: json['sportiness'] as int?,
      breastSize: json['breastSize'] as int?,
      bio: json['bio'] as String?,
      city: json['city'] as String?,
      jobType: json['jobType'] as int?,
      eduLevel: json['eduLevel'] as int?,
      cigarettes: json['cigarettes'] as int?,
      alcohol: json['alcohol'] as int?,
      childrenNumber: json['childrenNumber'] as int?,
      maritalStatus: json['maritalStatus'] as int?,
      musicalTaste: json['musicalTaste'] as int?,
      filmTaste: json['filmTaste'] as int?,
      religion: json['religion'] as int?,
      horoscope: json['horoscope'] as int?,
      languages: json['languages'] as int?,
      interests: json['interests'] as int?,
      shape: json['shape'] as int?,
      facialHair: json['facialHair'] as int?,
      matchPct: json['matchPct'] as int?,
    );

Map<String, dynamic> _$PersonAllDTOToJson(PersonAllDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'name': instance.name,
      'email': instance.email,
      'photo': instance.photo,
      'birthDate': _dateToJson(instance.birthDate),
      'height': instance.height,
      'age': instance.age,
      'gender': instance.gender,
      'tattoo': instance.tattoo,
      'eyeColour': instance.eyeColour,
      'hairColour': instance.hairColour,
      'piercing': instance.piercing,
      'glasses': instance.glasses,
      'sportiness': instance.sportiness,
      'breastSize': instance.breastSize,
      'bio': instance.bio,
      'city': instance.city,
      'jobType': instance.jobType,
      'eduLevel': instance.eduLevel,
      'cigarettes': instance.cigarettes,
      'alcohol': instance.alcohol,
      'childrenNumber': instance.childrenNumber,
      'maritalStatus': instance.maritalStatus,
      'musicalTaste': instance.musicalTaste,
      'filmTaste': instance.filmTaste,
      'religion': instance.religion,
      'horoscope': instance.horoscope,
      'languages': instance.languages,
      'interests': instance.interests,
      'shape': instance.shape,
      'facialHair': instance.facialHair,
      'matchPct': instance.matchPct,
    };

RegistrationDTO _$RegistrationDTOFromJson(Map<String, dynamic> json) =>
    RegistrationDTO(
      username: json['username'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      photo: json['photo'] as String,
      birthDate: DateTime.parse(json['birthDate'] as String),
      height: json['height'] as int?,
      gender: json['gender'] as int?,
      tattoo: json['tattoo'] as int?,
      eyeColour: json['eyeColour'] as int?,
      hairColour: json['hairColour'] as int?,
      piercing: json['piercing'] as int?,
      glasses: json['glasses'] as int?,
      sportiness: json['sportiness'] as int?,
      breastSize: json['breastSize'] as int?,
      bio: json['bio'] as String?,
      city: json['city'] as String?,
      jobType: json['jobType'] as int?,
      eduLevel: json['eduLevel'] as int?,
      cigarettes: json['cigarettes'] as int?,
      alcohol: json['alcohol'] as int?,
      childrenNumber: json['childrenNumber'] as int?,
      maritalStatus: json['maritalStatus'] as int?,
      musicalTaste: json['musicalTaste'] as int?,
      filmTaste: json['filmTaste'] as int?,
      religion: json['religion'] as int?,
      horoscope: json['horoscope'] as int?,
      languages: json['languages'] as int?,
      interests: json['interests'] as int?,
      shape: json['shape'] as int?,
      facialHair: json['facialHair'] as int?,
    );

Map<String, dynamic> _$RegistrationDTOToJson(RegistrationDTO instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'name': instance.name,
      'email': instance.email,
      'photo': instance.photo,
      'birthDate': _dateToJson(instance.birthDate),
      'height': instance.height,
      'gender': instance.gender,
      'tattoo': instance.tattoo,
      'eyeColour': instance.eyeColour,
      'hairColour': instance.hairColour,
      'piercing': instance.piercing,
      'glasses': instance.glasses,
      'sportiness': instance.sportiness,
      'breastSize': instance.breastSize,
      'bio': instance.bio,
      'city': instance.city,
      'jobType': instance.jobType,
      'eduLevel': instance.eduLevel,
      'cigarettes': instance.cigarettes,
      'alcohol': instance.alcohol,
      'childrenNumber': instance.childrenNumber,
      'maritalStatus': instance.maritalStatus,
      'musicalTaste': instance.musicalTaste,
      'filmTaste': instance.filmTaste,
      'religion': instance.religion,
      'horoscope': instance.horoscope,
      'languages': instance.languages,
      'interests': instance.interests,
      'shape': instance.shape,
      'facialHair': instance.facialHair,
    };

Tokens _$TokensFromJson(Map<String, dynamic> json) => Tokens(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$TokensToJson(Tokens instance) => <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
