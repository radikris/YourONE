// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'your_one_service.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatNotification _$ChatNotificationFromJson(Map<String, dynamic> json) =>
    ChatNotification(
      id: json['id'] as num,
      senderId: json['senderId'] as num,
      senderName: json['senderName'] as String,
      text: json['text'] as String,
      timeStamp: json['timeStamp'] as num,
    );

Map<String, dynamic> _$ChatNotificationToJson(ChatNotification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'senderId': instance.senderId,
      'senderName': instance.senderName,
      'text': instance.text,
      'timeStamp': instance.timeStamp,
    };

CommonAttributes _$CommonAttributesFromJson(Map<String, dynamic> json) =>
    CommonAttributes(
      name: json['name'] as String,
      matches: json['matches'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$CommonAttributesToJson(CommonAttributes instance) =>
    <String, dynamic>{
      'name': instance.name,
      'matches': instance.matches,
    };

LoginDTO _$LoginDTOFromJson(Map<String, dynamic> json) => LoginDTO(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$LoginDTOToJson(LoginDTO instance) => <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

Match _$MatchFromJson(Map<String, dynamic> json) => Match(
      pct: json['pct'] as int?,
      commonAttributes: (json['commonAttributes'] as List<dynamic>?)
              ?.map((e) => CommonAttributes.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$MatchToJson(Match instance) => <String, dynamic>{
      'pct': instance.pct,
      'commonAttributes':
          instance.commonAttributes.map((e) => e.toJson()).toList(),
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
      filmTaste: json['_filmTaste'] as String?,
      interests: json['_interests'] as String?,
      languages: json['_languages'] as String?,
      musicalTaste: json['_musicalTaste'] as String?,
      age: json['age'] as int,
      alcohol: json['alcohol'] as int?,
      bio: json['bio'] as String?,
      birthDate: json['birthDate'] == null
          ? null
          : DateTime.parse(json['birthDate'] as String),
      breastSize: json['breastSize'] as int?,
      chemistry: json['chemistry'] as int?,
      childrenNumber: json['childrenNumber'] as int?,
      cigarettes: json['cigarettes'] as int?,
      city: json['city'] as String?,
      eduLevel: json['eduLevel'] as int?,
      email: json['email'] as String,
      eyeColour: json['eyeColour'] as int?,
      facialHair: json['facialHair'] as int?,
      $filmTaste: (json['filmTaste'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      gender: json['gender'] as int?,
      glasses: json['glasses'] as int?,
      hairColour: json['hairColour'] as int?,
      height: json['height'] as int?,
      horoscope: json['horoscope'] as int?,
      id: json['id'] as num,
      $interests: (json['interests'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      jobType: json['jobType'] as int?,
      $languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      maritalStatus: json['maritalStatus'] as int?,
      maxAge: json['maxAge'] as int?,
      minAge: json['minAge'] as int?,
      $musicalTaste: (json['musicalTaste'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
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
      '_filmTaste': instance.filmTaste,
      '_interests': instance.interests,
      '_languages': instance.languages,
      '_musicalTaste': instance.musicalTaste,
      'age': instance.age,
      'alcohol': instance.alcohol,
      'bio': instance.bio,
      'birthDate': _dateToJson(instance.birthDate),
      'breastSize': instance.breastSize,
      'chemistry': instance.chemistry,
      'childrenNumber': instance.childrenNumber,
      'cigarettes': instance.cigarettes,
      'city': instance.city,
      'eduLevel': instance.eduLevel,
      'email': instance.email,
      'eyeColour': instance.eyeColour,
      'facialHair': instance.facialHair,
      'filmTaste': instance.$filmTaste,
      'gender': instance.gender,
      'glasses': instance.glasses,
      'hairColour': instance.hairColour,
      'height': instance.height,
      'horoscope': instance.horoscope,
      'id': instance.id,
      'interests': instance.$interests,
      'jobType': instance.jobType,
      'languages': instance.$languages,
      'maritalStatus': instance.maritalStatus,
      'maxAge': instance.maxAge,
      'minAge': instance.minAge,
      'musicalTaste': instance.$musicalTaste,
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
      musicalTaste: (json['musicalTaste'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      filmTaste: (json['filmTaste'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      religion: json['religion'] as int?,
      horoscope: json['horoscope'] as int?,
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      interests: (json['interests'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      shape: json['shape'] as int?,
      facialHair: json['facialHair'] as int?,
      match: json['match'] == null
          ? null
          : Match.fromJson(json['match'] as Map<String, dynamic>),
      minAge: json['minAge'] as int?,
      maxAge: json['maxAge'] as int?,
      chemistry: json['chemistry'] as int?,
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
      'match': instance.match?.toJson(),
      'minAge': instance.minAge,
      'maxAge': instance.maxAge,
      'chemistry': instance.chemistry,
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
      musicalTaste: (json['musicalTaste'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      filmTaste: (json['filmTaste'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      religion: json['religion'] as int?,
      horoscope: json['horoscope'] as int?,
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      interests: (json['interests'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      shape: json['shape'] as int?,
      facialHair: json['facialHair'] as int?,
      minAge: json['minAge'] as int?,
      maxAge: json['maxAge'] as int?,
      chemistry: json['chemistry'] as int?,
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
      'minAge': instance.minAge,
      'maxAge': instance.maxAge,
      'chemistry': instance.chemistry,
    };

SendMessageDTO _$SendMessageDTOFromJson(Map<String, dynamic> json) =>
    SendMessageDTO(
      addresseeId: json['addresseeId'] as num,
      jwt: json['jwt'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$SendMessageDTOToJson(SendMessageDTO instance) =>
    <String, dynamic>{
      'addresseeId': instance.addresseeId,
      'jwt': instance.jwt,
      'text': instance.text,
    };

Tokens _$TokensFromJson(Map<String, dynamic> json) => Tokens(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      userId: json['userId'] as num,
    );

Map<String, dynamic> _$TokensToJson(Tokens instance) => <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'userId': instance.userId,
    };
