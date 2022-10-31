// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:chopper/chopper.dart' as chopper;
import 'your_one_service.enums.swagger.dart' as enums;
export 'your_one_service.enums.swagger.dart';

part 'your_one_service.swagger.chopper.dart';
part 'your_one_service.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class YourOneService extends ChopperService {
  static YourOneService create({
    ChopperClient? client,
    Authenticator? authenticator,
    String? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$YourOneService(client);
    }

    final newClient = ChopperClient(
        services: [_$YourOneService()],
        converter: $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        authenticator: authenticator,
        baseUrl: baseUrl ?? 'http://194.163.179.31:8040/');
    return _$YourOneService(newClient);
  }

  ///findAllChats
  ///@param Authorization Authorization
  Future<chopper.Response<List<RecentChatDTO>>> apiChatGet(
      {String? authorization}) {
    generatedMapping.putIfAbsent(
        RecentChatDTO, () => RecentChatDTO.fromJsonFactory);

    return _apiChatGet(authorization: authorization);
  }

  ///findAllChats
  ///@param Authorization Authorization
  @Get(path: '/api/chat')
  Future<chopper.Response<List<RecentChatDTO>>> _apiChatGet(
      {@Header('Authorization') String? authorization});

  ///Gets all chat messages, only for debug
  Future<chopper.Response<List<MessageEntity>>> apiChatAllGet() {
    generatedMapping.putIfAbsent(
        MessageEntity, () => MessageEntity.fromJsonFactory);

    return _apiChatAllGet();
  }

  ///Gets all chat messages, only for debug
  @Get(path: '/api/chat/all')
  Future<chopper.Response<List<MessageEntity>>> _apiChatAllGet();

  ///findChatMessages
  ///@param Authorization Authorization
  ///@param addresseeId addresseeId
  Future<chopper.Response<List<ChatNotification>>> apiChatAddresseeIdGet({
    String? authorization,
    required int? addresseeId,
  }) {
    generatedMapping.putIfAbsent(
        ChatNotification, () => ChatNotification.fromJsonFactory);

    return _apiChatAddresseeIdGet(
        authorization: authorization, addresseeId: addresseeId);
  }

  ///findChatMessages
  ///@param Authorization Authorization
  ///@param addresseeId addresseeId
  @Get(path: '/api/chat/{addresseeId}')
  Future<chopper.Response<List<ChatNotification>>> _apiChatAddresseeIdGet({
    @Header('Authorization') String? authorization,
    @Path('addresseeId') required int? addresseeId,
  });

  ///countNewMessages
  ///@param Authorization Authorization
  ///@param addresseeId addresseeId
  Future<chopper.Response<int>> apiChatAddresseeIdCountGet({
    String? authorization,
    required int? addresseeId,
  }) {
    return _apiChatAddresseeIdCountGet(
        authorization: authorization, addresseeId: addresseeId);
  }

  ///countNewMessages
  ///@param Authorization Authorization
  ///@param addresseeId addresseeId
  @Get(path: '/api/chat/{addresseeId}/count')
  Future<chopper.Response<int>> _apiChatAddresseeIdCountGet({
    @Header('Authorization') String? authorization,
    @Path('addresseeId') required int? addresseeId,
  });

  ///getAll
  Future<chopper.Response<List<PersonAllDTO>>> apiPersonGet() {
    generatedMapping.putIfAbsent(
        PersonAllDTO, () => PersonAllDTO.fromJsonFactory);

    return _apiPersonGet();
  }

  ///getAll
  @Get(path: '/api/person/')
  Future<chopper.Response<List<PersonAllDTO>>> _apiPersonGet();

  ///getAllPartners
  ///@param Authorization Authorization
  Future<chopper.Response<List<PersonAllDTO>>> apiPersonAllPartnersGet(
      {String? authorization}) {
    generatedMapping.putIfAbsent(
        PersonAllDTO, () => PersonAllDTO.fromJsonFactory);

    return _apiPersonAllPartnersGet(authorization: authorization);
  }

  ///getAllPartners
  ///@param Authorization Authorization
  @Get(path: '/api/person/all-partners')
  Future<chopper.Response<List<PersonAllDTO>>> _apiPersonAllPartnersGet(
      {@Header('Authorization') String? authorization});

  ///Moves the oldNumber-th picture to the newNumber-th place in the pictures' list
  ///@param Authorization Authorization
  ///@param newNumber newNumber
  ///@param oldNumber oldNumber
  Future<chopper.Response<String>>
      apiPersonChangePictureOderOldNumberNewNumberPut({
    String? authorization,
    required int? newNumber,
    required int? oldNumber,
  }) {
    return _apiPersonChangePictureOderOldNumberNewNumberPut(
        authorization: authorization,
        newNumber: newNumber,
        oldNumber: oldNumber);
  }

  ///Moves the oldNumber-th picture to the newNumber-th place in the pictures' list
  ///@param Authorization Authorization
  ///@param newNumber newNumber
  ///@param oldNumber oldNumber
  @Put(
    path: '/api/person/change-picture-oder/{oldNumber}/{newNumber}',
    optionalBody: true,
  )
  Future<chopper.Response<String>>
      _apiPersonChangePictureOderOldNumberNewNumberPut({
    @Header('Authorization') String? authorization,
    @Path('newNumber') required int? newNumber,
    @Path('oldNumber') required int? oldNumber,
  });

  ///serveFile
  ///@param filename filename
  Future<chopper.Response<Resource>> apiPersonFilesFilenameGet(
      {required String? filename}) {
    generatedMapping.putIfAbsent(Resource, () => Resource.fromJsonFactory);

    return _apiPersonFilesFilenameGet(filename: filename);
  }

  ///serveFile
  ///@param filename filename
  @Get(path: '/api/person/files/{filename}')
  Future<chopper.Response<Resource>> _apiPersonFilesFilenameGet(
      {@Path('filename') required String? filename});

  ///Login method for users
  ///@param loginData loginData
  Future<chopper.Response<Tokens>> apiPersonLoginPost(
      {required LoginDTO? loginData}) {
    generatedMapping.putIfAbsent(LoginDTO, () => LoginDTO.fromJsonFactory);
    generatedMapping.putIfAbsent(Tokens, () => Tokens.fromJsonFactory);

    return _apiPersonLoginPost(loginData: loginData);
  }

  ///Login method for users
  ///@param loginData loginData
  @Post(path: '/api/person/login')
  Future<chopper.Response<Tokens>> _apiPersonLoginPost(
      {@Body() required LoginDTO? loginData});

  ///Gets the person entity of the current user
  ///@param Authorization Authorization
  Future<chopper.Response<PersonAllDTO>> apiPersonMeGet(
      {String? authorization}) {
    generatedMapping.putIfAbsent(
        PersonAllDTO, () => PersonAllDTO.fromJsonFactory);

    return _apiPersonMeGet(authorization: authorization);
  }

  ///Gets the person entity of the current user
  ///@param Authorization Authorization
  @Get(path: '/api/person/me')
  Future<chopper.Response<PersonAllDTO>> _apiPersonMeGet(
      {@Header('Authorization') String? authorization});

  ///Makes instant match, only for testing
  ///@param a_id a_id
  ///@param b_id b_id
  Future<chopper.Response<String>> apiPersonPartnerMatchMakeAIdBIdPost({
    required int? aId,
    required int? bId,
  }) {
    return _apiPersonPartnerMatchMakeAIdBIdPost(aId: aId, bId: bId);
  }

  ///Makes instant match, only for testing
  ///@param a_id a_id
  ///@param b_id b_id
  @Post(
    path: '/api/person/partner-match/make/{a_id}/{b_id}',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiPersonPartnerMatchMakeAIdBIdPost({
    @Query('a_id') required int? aId,
    @Query('b_id') required int? bId,
  });

  ///noMatch
  ///@param Authorization Authorization
  ///@param partnerId partnerId
  Future<chopper.Response<ItsAMatch>> apiPersonPartnerMatchNoPost({
    String? authorization,
    required num? partnerId,
  }) {
    generatedMapping.putIfAbsent(ItsAMatch, () => ItsAMatch.fromJsonFactory);

    return _apiPersonPartnerMatchNoPost(
        authorization: authorization, partnerId: partnerId);
  }

  ///noMatch
  ///@param Authorization Authorization
  ///@param partnerId partnerId
  @Post(path: '/api/person/partner-match/no')
  Future<chopper.Response<ItsAMatch>> _apiPersonPartnerMatchNoPost({
    @Header('Authorization') String? authorization,
    @Body() required num? partnerId,
  });

  ///yesMatch
  ///@param Authorization Authorization
  ///@param partnerId partnerId
  Future<chopper.Response<ItsAMatch>> apiPersonPartnerMatchYesPost({
    String? authorization,
    required num? partnerId,
  }) {
    generatedMapping.putIfAbsent(ItsAMatch, () => ItsAMatch.fromJsonFactory);

    return _apiPersonPartnerMatchYesPost(
        authorization: authorization, partnerId: partnerId);
  }

  ///yesMatch
  ///@param Authorization Authorization
  ///@param partnerId partnerId
  @Post(path: '/api/person/partner-match/yes')
  Future<chopper.Response<ItsAMatch>> _apiPersonPartnerMatchYesPost({
    @Header('Authorization') String? authorization,
    @Body() required num? partnerId,
  });

  ///getPotentialPartner
  ///@param Authorization Authorization
  Future<chopper.Response<List<PersonAllDTO>>> apiPersonPotentialPartnersGet(
      {String? authorization}) {
    generatedMapping.putIfAbsent(
        PersonAllDTO, () => PersonAllDTO.fromJsonFactory);

    return _apiPersonPotentialPartnersGet(authorization: authorization);
  }

  ///getPotentialPartner
  ///@param Authorization Authorization
  @Get(path: '/api/person/potential-partners')
  Future<chopper.Response<List<PersonAllDTO>>> _apiPersonPotentialPartnersGet(
      {@Header('Authorization') String? authorization});

  ///Sign up method for users
  ///@param registerData registerData
  Future<chopper.Response<Tokens>> apiPersonSignUpPost(
      {required RegistrationDTO? registerData}) {
    generatedMapping.putIfAbsent(
        RegistrationDTO, () => RegistrationDTO.fromJsonFactory);
    generatedMapping.putIfAbsent(Tokens, () => Tokens.fromJsonFactory);

    return _apiPersonSignUpPost(registerData: registerData);
  }

  ///Sign up method for users
  ///@param registerData registerData
  @Post(path: '/api/person/sign-up')
  Future<chopper.Response<Tokens>> _apiPersonSignUpPost(
      {@Body() required RegistrationDTO? registerData});

  ///uploadFile
  ///@param Authorization Authorization
  ///@param file file
  Future<chopper.Response<String>> apiPersonUploadPost({
    String? authorization,
    required List<String>? file,
  }) {
    return _apiPersonUploadPost(authorization: authorization, file: file);
  }

  ///uploadFile
  ///@param Authorization Authorization
  ///@param file file
  @Post(
    path: '/api/person/upload',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiPersonUploadPost({
    @Header('Authorization') String? authorization,
    @Field('file') required List<String>? file,
  });

  ///Uploads the picture to the index-th place of the pictures
  ///@param Authorization Authorization
  ///@param file file
  ///@param index index
  Future<chopper.Response<String>> apiPersonUploadIndexPost({
    String? authorization,
    required List<String>? file,
    required int? index,
  }) {
    return _apiPersonUploadIndexPost(
        authorization: authorization, file: file, index: index);
  }

  ///Uploads the picture to the index-th place of the pictures
  ///@param Authorization Authorization
  ///@param file file
  ///@param index index
  @Post(
    path: '/api/person/upload/{index}',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiPersonUploadIndexPost({
    @Header('Authorization') String? authorization,
    @Field('file') required List<String>? file,
    @Path('index') required int? index,
  });

  ///Modifying user data
  ///@param id id
  ///@param newData newData
  Future<chopper.Response<PersonAllDTO>> apiPersonIdPut({
    required int? id,
    required CreatePersonDTO? newData,
  }) {
    generatedMapping.putIfAbsent(
        CreatePersonDTO, () => CreatePersonDTO.fromJsonFactory);
    generatedMapping.putIfAbsent(
        PersonAllDTO, () => PersonAllDTO.fromJsonFactory);

    return _apiPersonIdPut(id: id, newData: newData);
  }

  ///Modifying user data
  ///@param id id
  ///@param newData newData
  @Put(path: '/api/person/{id}')
  Future<chopper.Response<PersonAllDTO>> _apiPersonIdPut({
    @Path('id') required int? id,
    @Body() required CreatePersonDTO? newData,
  });
}

@JsonSerializable(explicitToJson: true)
class ChatNotification {
  ChatNotification({
    required this.id,
    required this.senderId,
    required this.senderName,
    required this.text,
    required this.timeStamp,
  });

  factory ChatNotification.fromJson(Map<String, dynamic> json) =>
      _$ChatNotificationFromJson(json);

  @JsonKey(name: 'id')
  final num id;
  @JsonKey(name: 'senderId')
  final num senderId;
  @JsonKey(name: 'senderName')
  final String senderName;
  @JsonKey(name: 'text')
  final String text;
  @JsonKey(name: 'timeStamp')
  final num timeStamp;
  static const fromJsonFactory = _$ChatNotificationFromJson;
  static const toJsonFactory = _$ChatNotificationToJson;
  Map<String, dynamic> toJson() => _$ChatNotificationToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChatNotification &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.senderId, senderId) ||
                const DeepCollectionEquality()
                    .equals(other.senderId, senderId)) &&
            (identical(other.senderName, senderName) ||
                const DeepCollectionEquality()
                    .equals(other.senderName, senderName)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.timeStamp, timeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.timeStamp, timeStamp)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(senderId) ^
      const DeepCollectionEquality().hash(senderName) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(timeStamp) ^
      runtimeType.hashCode;
}

extension $ChatNotificationExtension on ChatNotification {
  ChatNotification copyWith(
      {num? id,
      num? senderId,
      String? senderName,
      String? text,
      num? timeStamp}) {
    return ChatNotification(
        id: id ?? this.id,
        senderId: senderId ?? this.senderId,
        senderName: senderName ?? this.senderName,
        text: text ?? this.text,
        timeStamp: timeStamp ?? this.timeStamp);
  }

  ChatNotification copyWithWrapped(
      {Wrapped<num>? id,
      Wrapped<num>? senderId,
      Wrapped<String>? senderName,
      Wrapped<String>? text,
      Wrapped<num>? timeStamp}) {
    return ChatNotification(
        id: (id != null ? id.value : this.id),
        senderId: (senderId != null ? senderId.value : this.senderId),
        senderName: (senderName != null ? senderName.value : this.senderName),
        text: (text != null ? text.value : this.text),
        timeStamp: (timeStamp != null ? timeStamp.value : this.timeStamp));
  }
}

@JsonSerializable(explicitToJson: true)
class CommonAttributes {
  CommonAttributes({
    required this.matches,
    required this.name,
  });

  factory CommonAttributes.fromJson(Map<String, dynamic> json) =>
      _$CommonAttributesFromJson(json);

  @JsonKey(name: 'matches')
  final Map<String, dynamic> matches;
  @JsonKey(name: 'name')
  final String name;
  static const fromJsonFactory = _$CommonAttributesFromJson;
  static const toJsonFactory = _$CommonAttributesToJson;
  Map<String, dynamic> toJson() => _$CommonAttributesToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommonAttributes &&
            (identical(other.matches, matches) ||
                const DeepCollectionEquality()
                    .equals(other.matches, matches)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(matches) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $CommonAttributesExtension on CommonAttributes {
  CommonAttributes copyWith({Map<String, dynamic>? matches, String? name}) {
    return CommonAttributes(
        matches: matches ?? this.matches, name: name ?? this.name);
  }

  CommonAttributes copyWithWrapped(
      {Wrapped<Map<String, dynamic>>? matches, Wrapped<String>? name}) {
    return CommonAttributes(
        matches: (matches != null ? matches.value : this.matches),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class CreatePersonDTO {
  CreatePersonDTO({
    this.username,
    required this.name,
    required this.email,
    required this.birthDate,
    this.height,
    this.age,
    this.gender,
    this.tattoo,
    this.eyeColour,
    this.hairColour,
    this.piercing,
    this.glasses,
    this.sportiness,
    this.breastSize,
    this.bio,
    this.city,
    this.jobType,
    this.eduLevel,
    this.cigarettes,
    this.alcohol,
    this.childrenNumber,
    this.maritalStatus,
    this.musicalTaste,
    this.filmTaste,
    this.religion,
    this.horoscope,
    this.languages,
    this.interests,
    this.shape,
    this.facialHair,
    this.match,
    this.minAge,
    this.maxAge,
    this.chemistry,
    this.theirOne,
  });

  factory CreatePersonDTO.fromJson(Map<String, dynamic> json) =>
      _$CreatePersonDTOFromJson(json);

  @JsonKey(name: 'username')
  final String? username;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'birthDate', toJson: _dateToJson)
  final DateTime birthDate;
  @JsonKey(name: 'height')
  final int? height;
  @JsonKey(name: 'age')
  final int? age;
  @JsonKey(name: 'gender')
  final int? gender;
  @JsonKey(name: 'tattoo')
  final int? tattoo;
  @JsonKey(name: 'eyeColour')
  final int? eyeColour;
  @JsonKey(name: 'hairColour')
  final int? hairColour;
  @JsonKey(name: 'piercing')
  final int? piercing;
  @JsonKey(name: 'glasses')
  final int? glasses;
  @JsonKey(name: 'sportiness')
  final int? sportiness;
  @JsonKey(name: 'breastSize')
  final int? breastSize;
  @JsonKey(name: 'bio')
  final String? bio;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'jobType')
  final int? jobType;
  @JsonKey(name: 'eduLevel')
  final int? eduLevel;
  @JsonKey(name: 'cigarettes')
  final int? cigarettes;
  @JsonKey(name: 'alcohol')
  final int? alcohol;
  @JsonKey(name: 'childrenNumber')
  final int? childrenNumber;
  @JsonKey(name: 'maritalStatus')
  final int? maritalStatus;
  @JsonKey(name: 'musicalTaste', defaultValue: <int>[])
  final List<int>? musicalTaste;
  @JsonKey(name: 'filmTaste', defaultValue: <int>[])
  final List<int>? filmTaste;
  @JsonKey(name: 'religion')
  final int? religion;
  @JsonKey(name: 'horoscope')
  final int? horoscope;
  @JsonKey(name: 'languages', defaultValue: <int>[])
  final List<int>? languages;
  @JsonKey(name: 'interests', defaultValue: <int>[])
  final List<int>? interests;
  @JsonKey(name: 'shape')
  final int? shape;
  @JsonKey(name: 'facialHair')
  final int? facialHair;
  @JsonKey(name: 'match')
  final Match? match;
  @JsonKey(name: 'minAge')
  final int? minAge;
  @JsonKey(name: 'maxAge')
  final int? maxAge;
  @JsonKey(name: 'chemistry')
  final int? chemistry;
  @JsonKey(name: 'theirOne')
  final YourOneDTO? theirOne;
  static const fromJsonFactory = _$CreatePersonDTOFromJson;
  static const toJsonFactory = _$CreatePersonDTOToJson;
  Map<String, dynamic> toJson() => _$CreatePersonDTOToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreatePersonDTO &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.tattoo, tattoo) ||
                const DeepCollectionEquality().equals(other.tattoo, tattoo)) &&
            (identical(other.eyeColour, eyeColour) ||
                const DeepCollectionEquality()
                    .equals(other.eyeColour, eyeColour)) &&
            (identical(other.hairColour, hairColour) ||
                const DeepCollectionEquality()
                    .equals(other.hairColour, hairColour)) &&
            (identical(other.piercing, piercing) ||
                const DeepCollectionEquality()
                    .equals(other.piercing, piercing)) &&
            (identical(other.glasses, glasses) ||
                const DeepCollectionEquality()
                    .equals(other.glasses, glasses)) &&
            (identical(other.sportiness, sportiness) ||
                const DeepCollectionEquality()
                    .equals(other.sportiness, sportiness)) &&
            (identical(other.breastSize, breastSize) ||
                const DeepCollectionEquality()
                    .equals(other.breastSize, breastSize)) &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.eduLevel, eduLevel) ||
                const DeepCollectionEquality()
                    .equals(other.eduLevel, eduLevel)) &&
            (identical(other.cigarettes, cigarettes) ||
                const DeepCollectionEquality()
                    .equals(other.cigarettes, cigarettes)) &&
            (identical(other.alcohol, alcohol) ||
                const DeepCollectionEquality()
                    .equals(other.alcohol, alcohol)) &&
            (identical(other.childrenNumber, childrenNumber) ||
                const DeepCollectionEquality()
                    .equals(other.childrenNumber, childrenNumber)) &&
            (identical(other.maritalStatus, maritalStatus) ||
                const DeepCollectionEquality()
                    .equals(other.maritalStatus, maritalStatus)) &&
            (identical(other.musicalTaste, musicalTaste) ||
                const DeepCollectionEquality()
                    .equals(other.musicalTaste, musicalTaste)) &&
            (identical(other.filmTaste, filmTaste) ||
                const DeepCollectionEquality()
                    .equals(other.filmTaste, filmTaste)) &&
            (identical(other.religion, religion) ||
                const DeepCollectionEquality()
                    .equals(other.religion, religion)) &&
            (identical(other.horoscope, horoscope) ||
                const DeepCollectionEquality().equals(other.horoscope, horoscope)) &&
            (identical(other.languages, languages) || const DeepCollectionEquality().equals(other.languages, languages)) &&
            (identical(other.interests, interests) || const DeepCollectionEquality().equals(other.interests, interests)) &&
            (identical(other.shape, shape) || const DeepCollectionEquality().equals(other.shape, shape)) &&
            (identical(other.facialHair, facialHair) || const DeepCollectionEquality().equals(other.facialHair, facialHair)) &&
            (identical(other.match, match) || const DeepCollectionEquality().equals(other.match, match)) &&
            (identical(other.minAge, minAge) || const DeepCollectionEquality().equals(other.minAge, minAge)) &&
            (identical(other.maxAge, maxAge) || const DeepCollectionEquality().equals(other.maxAge, maxAge)) &&
            (identical(other.chemistry, chemistry) || const DeepCollectionEquality().equals(other.chemistry, chemistry)) &&
            (identical(other.theirOne, theirOne) || const DeepCollectionEquality().equals(other.theirOne, theirOne)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(tattoo) ^
      const DeepCollectionEquality().hash(eyeColour) ^
      const DeepCollectionEquality().hash(hairColour) ^
      const DeepCollectionEquality().hash(piercing) ^
      const DeepCollectionEquality().hash(glasses) ^
      const DeepCollectionEquality().hash(sportiness) ^
      const DeepCollectionEquality().hash(breastSize) ^
      const DeepCollectionEquality().hash(bio) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(eduLevel) ^
      const DeepCollectionEquality().hash(cigarettes) ^
      const DeepCollectionEquality().hash(alcohol) ^
      const DeepCollectionEquality().hash(childrenNumber) ^
      const DeepCollectionEquality().hash(maritalStatus) ^
      const DeepCollectionEquality().hash(musicalTaste) ^
      const DeepCollectionEquality().hash(filmTaste) ^
      const DeepCollectionEquality().hash(religion) ^
      const DeepCollectionEquality().hash(horoscope) ^
      const DeepCollectionEquality().hash(languages) ^
      const DeepCollectionEquality().hash(interests) ^
      const DeepCollectionEquality().hash(shape) ^
      const DeepCollectionEquality().hash(facialHair) ^
      const DeepCollectionEquality().hash(match) ^
      const DeepCollectionEquality().hash(minAge) ^
      const DeepCollectionEquality().hash(maxAge) ^
      const DeepCollectionEquality().hash(chemistry) ^
      const DeepCollectionEquality().hash(theirOne) ^
      runtimeType.hashCode;
}

extension $CreatePersonDTOExtension on CreatePersonDTO {
  CreatePersonDTO copyWith(
      {String? username,
      String? name,
      String? email,
      DateTime? birthDate,
      int? height,
      int? age,
      int? gender,
      int? tattoo,
      int? eyeColour,
      int? hairColour,
      int? piercing,
      int? glasses,
      int? sportiness,
      int? breastSize,
      String? bio,
      String? city,
      int? jobType,
      int? eduLevel,
      int? cigarettes,
      int? alcohol,
      int? childrenNumber,
      int? maritalStatus,
      List<int>? musicalTaste,
      List<int>? filmTaste,
      int? religion,
      int? horoscope,
      List<int>? languages,
      List<int>? interests,
      int? shape,
      int? facialHair,
      Match? match,
      int? minAge,
      int? maxAge,
      int? chemistry,
      YourOneDTO? theirOne}) {
    return CreatePersonDTO(
        username: username ?? this.username,
        name: name ?? this.name,
        email: email ?? this.email,
        birthDate: birthDate ?? this.birthDate,
        height: height ?? this.height,
        age: age ?? this.age,
        gender: gender ?? this.gender,
        tattoo: tattoo ?? this.tattoo,
        eyeColour: eyeColour ?? this.eyeColour,
        hairColour: hairColour ?? this.hairColour,
        piercing: piercing ?? this.piercing,
        glasses: glasses ?? this.glasses,
        sportiness: sportiness ?? this.sportiness,
        breastSize: breastSize ?? this.breastSize,
        bio: bio ?? this.bio,
        city: city ?? this.city,
        jobType: jobType ?? this.jobType,
        eduLevel: eduLevel ?? this.eduLevel,
        cigarettes: cigarettes ?? this.cigarettes,
        alcohol: alcohol ?? this.alcohol,
        childrenNumber: childrenNumber ?? this.childrenNumber,
        maritalStatus: maritalStatus ?? this.maritalStatus,
        musicalTaste: musicalTaste ?? this.musicalTaste,
        filmTaste: filmTaste ?? this.filmTaste,
        religion: religion ?? this.religion,
        horoscope: horoscope ?? this.horoscope,
        languages: languages ?? this.languages,
        interests: interests ?? this.interests,
        shape: shape ?? this.shape,
        facialHair: facialHair ?? this.facialHair,
        match: match ?? this.match,
        minAge: minAge ?? this.minAge,
        maxAge: maxAge ?? this.maxAge,
        chemistry: chemistry ?? this.chemistry,
        theirOne: theirOne ?? this.theirOne);
  }

  CreatePersonDTO copyWithWrapped(
      {Wrapped<String?>? username,
      Wrapped<String>? name,
      Wrapped<String>? email,
      Wrapped<DateTime>? birthDate,
      Wrapped<int?>? height,
      Wrapped<int?>? age,
      Wrapped<int?>? gender,
      Wrapped<int?>? tattoo,
      Wrapped<int?>? eyeColour,
      Wrapped<int?>? hairColour,
      Wrapped<int?>? piercing,
      Wrapped<int?>? glasses,
      Wrapped<int?>? sportiness,
      Wrapped<int?>? breastSize,
      Wrapped<String?>? bio,
      Wrapped<String?>? city,
      Wrapped<int?>? jobType,
      Wrapped<int?>? eduLevel,
      Wrapped<int?>? cigarettes,
      Wrapped<int?>? alcohol,
      Wrapped<int?>? childrenNumber,
      Wrapped<int?>? maritalStatus,
      Wrapped<List<int>?>? musicalTaste,
      Wrapped<List<int>?>? filmTaste,
      Wrapped<int?>? religion,
      Wrapped<int?>? horoscope,
      Wrapped<List<int>?>? languages,
      Wrapped<List<int>?>? interests,
      Wrapped<int?>? shape,
      Wrapped<int?>? facialHair,
      Wrapped<Match?>? match,
      Wrapped<int?>? minAge,
      Wrapped<int?>? maxAge,
      Wrapped<int?>? chemistry,
      Wrapped<YourOneDTO?>? theirOne}) {
    return CreatePersonDTO(
        username: (username != null ? username.value : this.username),
        name: (name != null ? name.value : this.name),
        email: (email != null ? email.value : this.email),
        birthDate: (birthDate != null ? birthDate.value : this.birthDate),
        height: (height != null ? height.value : this.height),
        age: (age != null ? age.value : this.age),
        gender: (gender != null ? gender.value : this.gender),
        tattoo: (tattoo != null ? tattoo.value : this.tattoo),
        eyeColour: (eyeColour != null ? eyeColour.value : this.eyeColour),
        hairColour: (hairColour != null ? hairColour.value : this.hairColour),
        piercing: (piercing != null ? piercing.value : this.piercing),
        glasses: (glasses != null ? glasses.value : this.glasses),
        sportiness: (sportiness != null ? sportiness.value : this.sportiness),
        breastSize: (breastSize != null ? breastSize.value : this.breastSize),
        bio: (bio != null ? bio.value : this.bio),
        city: (city != null ? city.value : this.city),
        jobType: (jobType != null ? jobType.value : this.jobType),
        eduLevel: (eduLevel != null ? eduLevel.value : this.eduLevel),
        cigarettes: (cigarettes != null ? cigarettes.value : this.cigarettes),
        alcohol: (alcohol != null ? alcohol.value : this.alcohol),
        childrenNumber: (childrenNumber != null
            ? childrenNumber.value
            : this.childrenNumber),
        maritalStatus:
            (maritalStatus != null ? maritalStatus.value : this.maritalStatus),
        musicalTaste:
            (musicalTaste != null ? musicalTaste.value : this.musicalTaste),
        filmTaste: (filmTaste != null ? filmTaste.value : this.filmTaste),
        religion: (religion != null ? religion.value : this.religion),
        horoscope: (horoscope != null ? horoscope.value : this.horoscope),
        languages: (languages != null ? languages.value : this.languages),
        interests: (interests != null ? interests.value : this.interests),
        shape: (shape != null ? shape.value : this.shape),
        facialHair: (facialHair != null ? facialHair.value : this.facialHair),
        match: (match != null ? match.value : this.match),
        minAge: (minAge != null ? minAge.value : this.minAge),
        maxAge: (maxAge != null ? maxAge.value : this.maxAge),
        chemistry: (chemistry != null ? chemistry.value : this.chemistry),
        theirOne: (theirOne != null ? theirOne.value : this.theirOne));
  }
}

@JsonSerializable(explicitToJson: true)
class File {
  File({
    this.absolute,
    this.absoluteFile,
    this.absolutePath,
    this.canonicalFile,
    this.canonicalPath,
    this.directory,
    this.file,
    this.freeSpace,
    this.hidden,
    this.name,
    this.parent,
    this.parentFile,
    this.path,
    this.totalSpace,
    this.usableSpace,
  });

  factory File.fromJson(Map<String, dynamic> json) => _$FileFromJson(json);

  @JsonKey(name: 'absolute')
  final bool? absolute;
  @JsonKey(name: 'absoluteFile')
  final File? absoluteFile;
  @JsonKey(name: 'absolutePath')
  final String? absolutePath;
  @JsonKey(name: 'canonicalFile')
  final File? canonicalFile;
  @JsonKey(name: 'canonicalPath')
  final String? canonicalPath;
  @JsonKey(name: 'directory')
  final bool? directory;
  @JsonKey(name: 'file')
  final bool? file;
  @JsonKey(name: 'freeSpace')
  final num? freeSpace;
  @JsonKey(name: 'hidden')
  final bool? hidden;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'parent')
  final String? parent;
  @JsonKey(name: 'parentFile')
  final File? parentFile;
  @JsonKey(name: 'path')
  final String? path;
  @JsonKey(name: 'totalSpace')
  final num? totalSpace;
  @JsonKey(name: 'usableSpace')
  final num? usableSpace;
  static const fromJsonFactory = _$FileFromJson;
  static const toJsonFactory = _$FileToJson;
  Map<String, dynamic> toJson() => _$FileToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is File &&
            (identical(other.absolute, absolute) ||
                const DeepCollectionEquality()
                    .equals(other.absolute, absolute)) &&
            (identical(other.absoluteFile, absoluteFile) ||
                const DeepCollectionEquality()
                    .equals(other.absoluteFile, absoluteFile)) &&
            (identical(other.absolutePath, absolutePath) ||
                const DeepCollectionEquality()
                    .equals(other.absolutePath, absolutePath)) &&
            (identical(other.canonicalFile, canonicalFile) ||
                const DeepCollectionEquality()
                    .equals(other.canonicalFile, canonicalFile)) &&
            (identical(other.canonicalPath, canonicalPath) ||
                const DeepCollectionEquality()
                    .equals(other.canonicalPath, canonicalPath)) &&
            (identical(other.directory, directory) ||
                const DeepCollectionEquality()
                    .equals(other.directory, directory)) &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)) &&
            (identical(other.freeSpace, freeSpace) ||
                const DeepCollectionEquality()
                    .equals(other.freeSpace, freeSpace)) &&
            (identical(other.hidden, hidden) ||
                const DeepCollectionEquality().equals(other.hidden, hidden)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.parent, parent) ||
                const DeepCollectionEquality().equals(other.parent, parent)) &&
            (identical(other.parentFile, parentFile) ||
                const DeepCollectionEquality()
                    .equals(other.parentFile, parentFile)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.totalSpace, totalSpace) ||
                const DeepCollectionEquality()
                    .equals(other.totalSpace, totalSpace)) &&
            (identical(other.usableSpace, usableSpace) ||
                const DeepCollectionEquality()
                    .equals(other.usableSpace, usableSpace)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(absolute) ^
      const DeepCollectionEquality().hash(absoluteFile) ^
      const DeepCollectionEquality().hash(absolutePath) ^
      const DeepCollectionEquality().hash(canonicalFile) ^
      const DeepCollectionEquality().hash(canonicalPath) ^
      const DeepCollectionEquality().hash(directory) ^
      const DeepCollectionEquality().hash(file) ^
      const DeepCollectionEquality().hash(freeSpace) ^
      const DeepCollectionEquality().hash(hidden) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(parent) ^
      const DeepCollectionEquality().hash(parentFile) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(totalSpace) ^
      const DeepCollectionEquality().hash(usableSpace) ^
      runtimeType.hashCode;
}

extension $FileExtension on File {
  File copyWith(
      {bool? absolute,
      File? absoluteFile,
      String? absolutePath,
      File? canonicalFile,
      String? canonicalPath,
      bool? directory,
      bool? file,
      num? freeSpace,
      bool? hidden,
      String? name,
      String? parent,
      File? parentFile,
      String? path,
      num? totalSpace,
      num? usableSpace}) {
    return File(
        absolute: absolute ?? this.absolute,
        absoluteFile: absoluteFile ?? this.absoluteFile,
        absolutePath: absolutePath ?? this.absolutePath,
        canonicalFile: canonicalFile ?? this.canonicalFile,
        canonicalPath: canonicalPath ?? this.canonicalPath,
        directory: directory ?? this.directory,
        file: file ?? this.file,
        freeSpace: freeSpace ?? this.freeSpace,
        hidden: hidden ?? this.hidden,
        name: name ?? this.name,
        parent: parent ?? this.parent,
        parentFile: parentFile ?? this.parentFile,
        path: path ?? this.path,
        totalSpace: totalSpace ?? this.totalSpace,
        usableSpace: usableSpace ?? this.usableSpace);
  }

  File copyWithWrapped(
      {Wrapped<bool?>? absolute,
      Wrapped<File?>? absoluteFile,
      Wrapped<String?>? absolutePath,
      Wrapped<File?>? canonicalFile,
      Wrapped<String?>? canonicalPath,
      Wrapped<bool?>? directory,
      Wrapped<bool?>? file,
      Wrapped<num?>? freeSpace,
      Wrapped<bool?>? hidden,
      Wrapped<String?>? name,
      Wrapped<String?>? parent,
      Wrapped<File?>? parentFile,
      Wrapped<String?>? path,
      Wrapped<num?>? totalSpace,
      Wrapped<num?>? usableSpace}) {
    return File(
        absolute: (absolute != null ? absolute.value : this.absolute),
        absoluteFile:
            (absoluteFile != null ? absoluteFile.value : this.absoluteFile),
        absolutePath:
            (absolutePath != null ? absolutePath.value : this.absolutePath),
        canonicalFile:
            (canonicalFile != null ? canonicalFile.value : this.canonicalFile),
        canonicalPath:
            (canonicalPath != null ? canonicalPath.value : this.canonicalPath),
        directory: (directory != null ? directory.value : this.directory),
        file: (file != null ? file.value : this.file),
        freeSpace: (freeSpace != null ? freeSpace.value : this.freeSpace),
        hidden: (hidden != null ? hidden.value : this.hidden),
        name: (name != null ? name.value : this.name),
        parent: (parent != null ? parent.value : this.parent),
        parentFile: (parentFile != null ? parentFile.value : this.parentFile),
        path: (path != null ? path.value : this.path),
        totalSpace: (totalSpace != null ? totalSpace.value : this.totalSpace),
        usableSpace:
            (usableSpace != null ? usableSpace.value : this.usableSpace));
  }
}

@JsonSerializable(explicitToJson: true)
class InputStream {
  InputStream();

  factory InputStream.fromJson(Map<String, dynamic> json) =>
      _$InputStreamFromJson(json);

  static const fromJsonFactory = _$InputStreamFromJson;
  static const toJsonFactory = _$InputStreamToJson;
  Map<String, dynamic> toJson() => _$InputStreamToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class ItsAMatch {
  ItsAMatch({
    required this.me,
    required this.partner,
  });

  factory ItsAMatch.fromJson(Map<String, dynamic> json) =>
      _$ItsAMatchFromJson(json);

  @JsonKey(name: 'me')
  final PersonAllDTO me;
  @JsonKey(name: 'partner')
  final PersonAllDTO partner;
  static const fromJsonFactory = _$ItsAMatchFromJson;
  static const toJsonFactory = _$ItsAMatchToJson;
  Map<String, dynamic> toJson() => _$ItsAMatchToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ItsAMatch &&
            (identical(other.me, me) ||
                const DeepCollectionEquality().equals(other.me, me)) &&
            (identical(other.partner, partner) ||
                const DeepCollectionEquality().equals(other.partner, partner)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(me) ^
      const DeepCollectionEquality().hash(partner) ^
      runtimeType.hashCode;
}

extension $ItsAMatchExtension on ItsAMatch {
  ItsAMatch copyWith({PersonAllDTO? me, PersonAllDTO? partner}) {
    return ItsAMatch(me: me ?? this.me, partner: partner ?? this.partner);
  }

  ItsAMatch copyWithWrapped(
      {Wrapped<PersonAllDTO>? me, Wrapped<PersonAllDTO>? partner}) {
    return ItsAMatch(
        me: (me != null ? me.value : this.me),
        partner: (partner != null ? partner.value : this.partner));
  }
}

@JsonSerializable(explicitToJson: true)
class LoginDTO {
  LoginDTO({
    required this.username,
    required this.password,
  });

  factory LoginDTO.fromJson(Map<String, dynamic> json) =>
      _$LoginDTOFromJson(json);

  @JsonKey(name: 'username')
  final String username;
  @JsonKey(name: 'password')
  final String password;
  static const fromJsonFactory = _$LoginDTOFromJson;
  static const toJsonFactory = _$LoginDTOToJson;
  Map<String, dynamic> toJson() => _$LoginDTOToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginDTO &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $LoginDTOExtension on LoginDTO {
  LoginDTO copyWith({String? username, String? password}) {
    return LoginDTO(
        username: username ?? this.username,
        password: password ?? this.password);
  }

  LoginDTO copyWithWrapped(
      {Wrapped<String>? username, Wrapped<String>? password}) {
    return LoginDTO(
        username: (username != null ? username.value : this.username),
        password: (password != null ? password.value : this.password));
  }
}

@JsonSerializable(explicitToJson: true)
class Match {
  Match({
    required this.commonAttributes,
    required this.pct,
  });

  factory Match.fromJson(Map<String, dynamic> json) => _$MatchFromJson(json);

  @JsonKey(name: 'commonAttributes', defaultValue: <CommonAttributes>[])
  final List<CommonAttributes> commonAttributes;
  @JsonKey(name: 'pct')
  final int pct;
  static const fromJsonFactory = _$MatchFromJson;
  static const toJsonFactory = _$MatchToJson;
  Map<String, dynamic> toJson() => _$MatchToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Match &&
            (identical(other.commonAttributes, commonAttributes) ||
                const DeepCollectionEquality()
                    .equals(other.commonAttributes, commonAttributes)) &&
            (identical(other.pct, pct) ||
                const DeepCollectionEquality().equals(other.pct, pct)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(commonAttributes) ^
      const DeepCollectionEquality().hash(pct) ^
      runtimeType.hashCode;
}

extension $MatchExtension on Match {
  Match copyWith({List<CommonAttributes>? commonAttributes, int? pct}) {
    return Match(
        commonAttributes: commonAttributes ?? this.commonAttributes,
        pct: pct ?? this.pct);
  }

  Match copyWithWrapped(
      {Wrapped<List<CommonAttributes>>? commonAttributes, Wrapped<int>? pct}) {
    return Match(
        commonAttributes: (commonAttributes != null
            ? commonAttributes.value
            : this.commonAttributes),
        pct: (pct != null ? pct.value : this.pct));
  }
}

@JsonSerializable(explicitToJson: true)
class MessageEntity {
  MessageEntity({
    required this.addressee,
    required this.id,
    required this.pair,
    required this.sender,
    required this.sentTime,
    this.state,
    required this.text,
  });

  factory MessageEntity.fromJson(Map<String, dynamic> json) =>
      _$MessageEntityFromJson(json);

  @JsonKey(name: 'addressee')
  final Person addressee;
  @JsonKey(name: 'id')
  final num id;
  @JsonKey(name: 'pair')
  final PairEntity pair;
  @JsonKey(name: 'sender')
  final Person sender;
  @JsonKey(name: 'sentTime')
  final DateTime sentTime;
  @JsonKey(
    name: 'state',
    toJson: messageEntityStateToJson,
    fromJson: messageEntityStateFromJson,
  )
  final enums.MessageEntityState? state;
  @JsonKey(name: 'text')
  final String text;
  static const fromJsonFactory = _$MessageEntityFromJson;
  static const toJsonFactory = _$MessageEntityToJson;
  Map<String, dynamic> toJson() => _$MessageEntityToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MessageEntity &&
            (identical(other.addressee, addressee) ||
                const DeepCollectionEquality()
                    .equals(other.addressee, addressee)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.pair, pair) ||
                const DeepCollectionEquality().equals(other.pair, pair)) &&
            (identical(other.sender, sender) ||
                const DeepCollectionEquality().equals(other.sender, sender)) &&
            (identical(other.sentTime, sentTime) ||
                const DeepCollectionEquality()
                    .equals(other.sentTime, sentTime)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(addressee) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(pair) ^
      const DeepCollectionEquality().hash(sender) ^
      const DeepCollectionEquality().hash(sentTime) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(text) ^
      runtimeType.hashCode;
}

extension $MessageEntityExtension on MessageEntity {
  MessageEntity copyWith(
      {Person? addressee,
      num? id,
      PairEntity? pair,
      Person? sender,
      DateTime? sentTime,
      enums.MessageEntityState? state,
      String? text}) {
    return MessageEntity(
        addressee: addressee ?? this.addressee,
        id: id ?? this.id,
        pair: pair ?? this.pair,
        sender: sender ?? this.sender,
        sentTime: sentTime ?? this.sentTime,
        state: state ?? this.state,
        text: text ?? this.text);
  }

  MessageEntity copyWithWrapped(
      {Wrapped<Person>? addressee,
      Wrapped<num>? id,
      Wrapped<PairEntity>? pair,
      Wrapped<Person>? sender,
      Wrapped<DateTime>? sentTime,
      Wrapped<enums.MessageEntityState?>? state,
      Wrapped<String>? text}) {
    return MessageEntity(
        addressee: (addressee != null ? addressee.value : this.addressee),
        id: (id != null ? id.value : this.id),
        pair: (pair != null ? pair.value : this.pair),
        sender: (sender != null ? sender.value : this.sender),
        sentTime: (sentTime != null ? sentTime.value : this.sentTime),
        state: (state != null ? state.value : this.state),
        text: (text != null ? text.value : this.text));
  }
}

@JsonSerializable(explicitToJson: true)
class PairEntity {
  PairEntity({
    required this.a,
    required this.b,
    required this.id,
    this.responseA,
    this.responseB,
    required this.state,
  });

  factory PairEntity.fromJson(Map<String, dynamic> json) =>
      _$PairEntityFromJson(json);

  @JsonKey(name: 'a')
  final Person a;
  @JsonKey(name: 'b')
  final Person b;
  @JsonKey(name: 'id')
  final num id;
  @JsonKey(name: 'responseA')
  final bool? responseA;
  @JsonKey(name: 'responseB')
  final bool? responseB;
  @JsonKey(
    name: 'state',
    toJson: pairEntityStateToJson,
    fromJson: pairEntityStateFromJson,
  )
  final enums.PairEntityState state;
  static const fromJsonFactory = _$PairEntityFromJson;
  static const toJsonFactory = _$PairEntityToJson;
  Map<String, dynamic> toJson() => _$PairEntityToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PairEntity &&
            (identical(other.a, a) ||
                const DeepCollectionEquality().equals(other.a, a)) &&
            (identical(other.b, b) ||
                const DeepCollectionEquality().equals(other.b, b)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.responseA, responseA) ||
                const DeepCollectionEquality()
                    .equals(other.responseA, responseA)) &&
            (identical(other.responseB, responseB) ||
                const DeepCollectionEquality()
                    .equals(other.responseB, responseB)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(a) ^
      const DeepCollectionEquality().hash(b) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(responseA) ^
      const DeepCollectionEquality().hash(responseB) ^
      const DeepCollectionEquality().hash(state) ^
      runtimeType.hashCode;
}

extension $PairEntityExtension on PairEntity {
  PairEntity copyWith(
      {Person? a,
      Person? b,
      num? id,
      bool? responseA,
      bool? responseB,
      enums.PairEntityState? state}) {
    return PairEntity(
        a: a ?? this.a,
        b: b ?? this.b,
        id: id ?? this.id,
        responseA: responseA ?? this.responseA,
        responseB: responseB ?? this.responseB,
        state: state ?? this.state);
  }

  PairEntity copyWithWrapped(
      {Wrapped<Person>? a,
      Wrapped<Person>? b,
      Wrapped<num>? id,
      Wrapped<bool?>? responseA,
      Wrapped<bool?>? responseB,
      Wrapped<enums.PairEntityState>? state}) {
    return PairEntity(
        a: (a != null ? a.value : this.a),
        b: (b != null ? b.value : this.b),
        id: (id != null ? id.value : this.id),
        responseA: (responseA != null ? responseA.value : this.responseA),
        responseB: (responseB != null ? responseB.value : this.responseB),
        state: (state != null ? state.value : this.state));
  }
}

@JsonSerializable(explicitToJson: true)
class Person {
  Person({
    this.filmTaste,
    this.interests,
    this.languages,
    this.musicalTaste,
    required this.age,
    this.alcohol,
    this.bio,
    this.birthDate,
    this.breastSize,
    this.chemistry,
    this.childrenNumber,
    this.cigarettes,
    this.city,
    this.eduLevel,
    required this.email,
    this.eyeColour,
    this.facialHair,
    required this.$filmTaste,
    this.gender,
    this.glasses,
    this.hairColour,
    this.height,
    this.horoscope,
    required this.id,
    required this.$interests,
    this.jobType,
    required this.$languages,
    this.maritalStatus,
    this.maxAge,
    this.minAge,
    required this.$musicalTaste,
    required this.name,
    required this.photos,
    this.piercing,
    this.religion,
    this.shape,
    this.sportiness,
    this.tattoo,
    this.theirOne,
    this.username,
  });

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  @JsonKey(name: '_filmTaste')
  final String? filmTaste;
  @JsonKey(name: '_interests')
  final String? interests;
  @JsonKey(name: '_languages')
  final String? languages;
  @JsonKey(name: '_musicalTaste')
  final String? musicalTaste;
  @JsonKey(name: 'age')
  final int age;
  @JsonKey(name: 'alcohol')
  final int? alcohol;
  @JsonKey(name: 'bio')
  final String? bio;
  @JsonKey(name: 'birthDate', toJson: _dateToJson)
  final DateTime? birthDate;
  @JsonKey(name: 'breastSize')
  final int? breastSize;
  @JsonKey(name: 'chemistry')
  final int? chemistry;
  @JsonKey(name: 'childrenNumber')
  final int? childrenNumber;
  @JsonKey(name: 'cigarettes')
  final int? cigarettes;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'eduLevel')
  final int? eduLevel;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'eyeColour')
  final int? eyeColour;
  @JsonKey(name: 'facialHair')
  final int? facialHair;
  @JsonKey(name: 'filmTaste', defaultValue: <int>[])
  final List<int> $filmTaste;
  @JsonKey(name: 'gender')
  final int? gender;
  @JsonKey(name: 'glasses')
  final int? glasses;
  @JsonKey(name: 'hairColour')
  final int? hairColour;
  @JsonKey(name: 'height')
  final int? height;
  @JsonKey(name: 'horoscope')
  final int? horoscope;
  @JsonKey(name: 'id')
  final num id;
  @JsonKey(name: 'interests', defaultValue: <int>[])
  final List<int> $interests;
  @JsonKey(name: 'jobType')
  final int? jobType;
  @JsonKey(name: 'languages', defaultValue: <int>[])
  final List<int> $languages;
  @JsonKey(name: 'maritalStatus')
  final int? maritalStatus;
  @JsonKey(name: 'maxAge')
  final int? maxAge;
  @JsonKey(name: 'minAge')
  final int? minAge;
  @JsonKey(name: 'musicalTaste', defaultValue: <int>[])
  final List<int> $musicalTaste;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'photos', defaultValue: <Photo>[])
  final List<Photo> photos;
  @JsonKey(name: 'piercing')
  final int? piercing;
  @JsonKey(name: 'religion')
  final int? religion;
  @JsonKey(name: 'shape')
  final int? shape;
  @JsonKey(name: 'sportiness')
  final int? sportiness;
  @JsonKey(name: 'tattoo')
  final int? tattoo;
  @JsonKey(name: 'theirOne')
  final YourOneEntity? theirOne;
  @JsonKey(name: 'username')
  final String? username;
  static const fromJsonFactory = _$PersonFromJson;
  static const toJsonFactory = _$PersonToJson;
  Map<String, dynamic> toJson() => _$PersonToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Person &&
            (identical(other.filmTaste, filmTaste) ||
                const DeepCollectionEquality()
                    .equals(other.filmTaste, filmTaste)) &&
            (identical(other.interests, interests) ||
                const DeepCollectionEquality()
                    .equals(other.interests, interests)) &&
            (identical(other.languages, languages) ||
                const DeepCollectionEquality()
                    .equals(other.languages, languages)) &&
            (identical(other.musicalTaste, musicalTaste) ||
                const DeepCollectionEquality()
                    .equals(other.musicalTaste, musicalTaste)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.alcohol, alcohol) ||
                const DeepCollectionEquality()
                    .equals(other.alcohol, alcohol)) &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.breastSize, breastSize) ||
                const DeepCollectionEquality()
                    .equals(other.breastSize, breastSize)) &&
            (identical(other.chemistry, chemistry) ||
                const DeepCollectionEquality()
                    .equals(other.chemistry, chemistry)) &&
            (identical(other.childrenNumber, childrenNumber) ||
                const DeepCollectionEquality()
                    .equals(other.childrenNumber, childrenNumber)) &&
            (identical(other.cigarettes, cigarettes) ||
                const DeepCollectionEquality()
                    .equals(other.cigarettes, cigarettes)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.eduLevel, eduLevel) ||
                const DeepCollectionEquality()
                    .equals(other.eduLevel, eduLevel)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.eyeColour, eyeColour) ||
                const DeepCollectionEquality()
                    .equals(other.eyeColour, eyeColour)) &&
            (identical(other.facialHair, facialHair) ||
                const DeepCollectionEquality()
                    .equals(other.facialHair, facialHair)) &&
            (identical(other.$filmTaste, $filmTaste) ||
                const DeepCollectionEquality()
                    .equals(other.$filmTaste, $filmTaste)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.glasses, glasses) ||
                const DeepCollectionEquality()
                    .equals(other.glasses, glasses)) &&
            (identical(other.hairColour, hairColour) ||
                const DeepCollectionEquality()
                    .equals(other.hairColour, hairColour)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.horoscope, horoscope) ||
                const DeepCollectionEquality()
                    .equals(other.horoscope, horoscope)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$interests, $interests) ||
                const DeepCollectionEquality()
                    .equals(other.$interests, $interests)) &&
            (identical(other.jobType, jobType) || const DeepCollectionEquality().equals(other.jobType, jobType)) &&
            (identical(other.$languages, $languages) || const DeepCollectionEquality().equals(other.$languages, $languages)) &&
            (identical(other.maritalStatus, maritalStatus) || const DeepCollectionEquality().equals(other.maritalStatus, maritalStatus)) &&
            (identical(other.maxAge, maxAge) || const DeepCollectionEquality().equals(other.maxAge, maxAge)) &&
            (identical(other.minAge, minAge) || const DeepCollectionEquality().equals(other.minAge, minAge)) &&
            (identical(other.$musicalTaste, $musicalTaste) || const DeepCollectionEquality().equals(other.$musicalTaste, $musicalTaste)) &&
            (identical(other.name, name) || const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.photos, photos) || const DeepCollectionEquality().equals(other.photos, photos)) &&
            (identical(other.piercing, piercing) || const DeepCollectionEquality().equals(other.piercing, piercing)) &&
            (identical(other.religion, religion) || const DeepCollectionEquality().equals(other.religion, religion)) &&
            (identical(other.shape, shape) || const DeepCollectionEquality().equals(other.shape, shape)) &&
            (identical(other.sportiness, sportiness) || const DeepCollectionEquality().equals(other.sportiness, sportiness)) &&
            (identical(other.tattoo, tattoo) || const DeepCollectionEquality().equals(other.tattoo, tattoo)) &&
            (identical(other.theirOne, theirOne) || const DeepCollectionEquality().equals(other.theirOne, theirOne)) &&
            (identical(other.username, username) || const DeepCollectionEquality().equals(other.username, username)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(filmTaste) ^
      const DeepCollectionEquality().hash(interests) ^
      const DeepCollectionEquality().hash(languages) ^
      const DeepCollectionEquality().hash(musicalTaste) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(alcohol) ^
      const DeepCollectionEquality().hash(bio) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(breastSize) ^
      const DeepCollectionEquality().hash(chemistry) ^
      const DeepCollectionEquality().hash(childrenNumber) ^
      const DeepCollectionEquality().hash(cigarettes) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(eduLevel) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(eyeColour) ^
      const DeepCollectionEquality().hash(facialHair) ^
      const DeepCollectionEquality().hash($filmTaste) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(glasses) ^
      const DeepCollectionEquality().hash(hairColour) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(horoscope) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($interests) ^
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash($languages) ^
      const DeepCollectionEquality().hash(maritalStatus) ^
      const DeepCollectionEquality().hash(maxAge) ^
      const DeepCollectionEquality().hash(minAge) ^
      const DeepCollectionEquality().hash($musicalTaste) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(photos) ^
      const DeepCollectionEquality().hash(piercing) ^
      const DeepCollectionEquality().hash(religion) ^
      const DeepCollectionEquality().hash(shape) ^
      const DeepCollectionEquality().hash(sportiness) ^
      const DeepCollectionEquality().hash(tattoo) ^
      const DeepCollectionEquality().hash(theirOne) ^
      const DeepCollectionEquality().hash(username) ^
      runtimeType.hashCode;
}

extension $PersonExtension on Person {
  Person copyWith(
      {String? filmTaste,
      String? interests,
      String? languages,
      String? musicalTaste,
      int? age,
      int? alcohol,
      String? bio,
      DateTime? birthDate,
      int? breastSize,
      int? chemistry,
      int? childrenNumber,
      int? cigarettes,
      String? city,
      int? eduLevel,
      String? email,
      int? eyeColour,
      int? facialHair,
      List<int>? $filmTaste,
      int? gender,
      int? glasses,
      int? hairColour,
      int? height,
      int? horoscope,
      num? id,
      List<int>? $interests,
      int? jobType,
      List<int>? $languages,
      int? maritalStatus,
      int? maxAge,
      int? minAge,
      List<int>? $musicalTaste,
      String? name,
      List<Photo>? photos,
      int? piercing,
      int? religion,
      int? shape,
      int? sportiness,
      int? tattoo,
      YourOneEntity? theirOne,
      String? username}) {
    return Person(
        filmTaste: filmTaste ?? this.filmTaste,
        interests: interests ?? this.interests,
        languages: languages ?? this.languages,
        musicalTaste: musicalTaste ?? this.musicalTaste,
        age: age ?? this.age,
        alcohol: alcohol ?? this.alcohol,
        bio: bio ?? this.bio,
        birthDate: birthDate ?? this.birthDate,
        breastSize: breastSize ?? this.breastSize,
        chemistry: chemistry ?? this.chemistry,
        childrenNumber: childrenNumber ?? this.childrenNumber,
        cigarettes: cigarettes ?? this.cigarettes,
        city: city ?? this.city,
        eduLevel: eduLevel ?? this.eduLevel,
        email: email ?? this.email,
        eyeColour: eyeColour ?? this.eyeColour,
        facialHair: facialHair ?? this.facialHair,
        $filmTaste: $filmTaste ?? this.$filmTaste,
        gender: gender ?? this.gender,
        glasses: glasses ?? this.glasses,
        hairColour: hairColour ?? this.hairColour,
        height: height ?? this.height,
        horoscope: horoscope ?? this.horoscope,
        id: id ?? this.id,
        $interests: $interests ?? this.$interests,
        jobType: jobType ?? this.jobType,
        $languages: $languages ?? this.$languages,
        maritalStatus: maritalStatus ?? this.maritalStatus,
        maxAge: maxAge ?? this.maxAge,
        minAge: minAge ?? this.minAge,
        $musicalTaste: $musicalTaste ?? this.$musicalTaste,
        name: name ?? this.name,
        photos: photos ?? this.photos,
        piercing: piercing ?? this.piercing,
        religion: religion ?? this.religion,
        shape: shape ?? this.shape,
        sportiness: sportiness ?? this.sportiness,
        tattoo: tattoo ?? this.tattoo,
        theirOne: theirOne ?? this.theirOne,
        username: username ?? this.username);
  }

  Person copyWithWrapped(
      {Wrapped<String?>? filmTaste,
      Wrapped<String?>? interests,
      Wrapped<String?>? languages,
      Wrapped<String?>? musicalTaste,
      Wrapped<int>? age,
      Wrapped<int?>? alcohol,
      Wrapped<String?>? bio,
      Wrapped<DateTime?>? birthDate,
      Wrapped<int?>? breastSize,
      Wrapped<int?>? chemistry,
      Wrapped<int?>? childrenNumber,
      Wrapped<int?>? cigarettes,
      Wrapped<String?>? city,
      Wrapped<int?>? eduLevel,
      Wrapped<String>? email,
      Wrapped<int?>? eyeColour,
      Wrapped<int?>? facialHair,
      Wrapped<List<int>>? $filmTaste,
      Wrapped<int?>? gender,
      Wrapped<int?>? glasses,
      Wrapped<int?>? hairColour,
      Wrapped<int?>? height,
      Wrapped<int?>? horoscope,
      Wrapped<num>? id,
      Wrapped<List<int>>? $interests,
      Wrapped<int?>? jobType,
      Wrapped<List<int>>? $languages,
      Wrapped<int?>? maritalStatus,
      Wrapped<int?>? maxAge,
      Wrapped<int?>? minAge,
      Wrapped<List<int>>? $musicalTaste,
      Wrapped<String>? name,
      Wrapped<List<Photo>>? photos,
      Wrapped<int?>? piercing,
      Wrapped<int?>? religion,
      Wrapped<int?>? shape,
      Wrapped<int?>? sportiness,
      Wrapped<int?>? tattoo,
      Wrapped<YourOneEntity?>? theirOne,
      Wrapped<String?>? username}) {
    return Person(
        filmTaste: (filmTaste != null ? filmTaste.value : this.filmTaste),
        interests: (interests != null ? interests.value : this.interests),
        languages: (languages != null ? languages.value : this.languages),
        musicalTaste:
            (musicalTaste != null ? musicalTaste.value : this.musicalTaste),
        age: (age != null ? age.value : this.age),
        alcohol: (alcohol != null ? alcohol.value : this.alcohol),
        bio: (bio != null ? bio.value : this.bio),
        birthDate: (birthDate != null ? birthDate.value : this.birthDate),
        breastSize: (breastSize != null ? breastSize.value : this.breastSize),
        chemistry: (chemistry != null ? chemistry.value : this.chemistry),
        childrenNumber: (childrenNumber != null
            ? childrenNumber.value
            : this.childrenNumber),
        cigarettes: (cigarettes != null ? cigarettes.value : this.cigarettes),
        city: (city != null ? city.value : this.city),
        eduLevel: (eduLevel != null ? eduLevel.value : this.eduLevel),
        email: (email != null ? email.value : this.email),
        eyeColour: (eyeColour != null ? eyeColour.value : this.eyeColour),
        facialHair: (facialHair != null ? facialHair.value : this.facialHair),
        $filmTaste: ($filmTaste != null ? $filmTaste.value : this.$filmTaste),
        gender: (gender != null ? gender.value : this.gender),
        glasses: (glasses != null ? glasses.value : this.glasses),
        hairColour: (hairColour != null ? hairColour.value : this.hairColour),
        height: (height != null ? height.value : this.height),
        horoscope: (horoscope != null ? horoscope.value : this.horoscope),
        id: (id != null ? id.value : this.id),
        $interests: ($interests != null ? $interests.value : this.$interests),
        jobType: (jobType != null ? jobType.value : this.jobType),
        $languages: ($languages != null ? $languages.value : this.$languages),
        maritalStatus:
            (maritalStatus != null ? maritalStatus.value : this.maritalStatus),
        maxAge: (maxAge != null ? maxAge.value : this.maxAge),
        minAge: (minAge != null ? minAge.value : this.minAge),
        $musicalTaste:
            ($musicalTaste != null ? $musicalTaste.value : this.$musicalTaste),
        name: (name != null ? name.value : this.name),
        photos: (photos != null ? photos.value : this.photos),
        piercing: (piercing != null ? piercing.value : this.piercing),
        religion: (religion != null ? religion.value : this.religion),
        shape: (shape != null ? shape.value : this.shape),
        sportiness: (sportiness != null ? sportiness.value : this.sportiness),
        tattoo: (tattoo != null ? tattoo.value : this.tattoo),
        theirOne: (theirOne != null ? theirOne.value : this.theirOne),
        username: (username != null ? username.value : this.username));
  }
}

@JsonSerializable(explicitToJson: true)
class PersonAllDTO {
  PersonAllDTO({
    this.age,
    this.alcohol,
    this.bio,
    required this.birthDate,
    this.breastSize,
    this.chemistry,
    this.childrenNumber,
    this.cigarettes,
    this.city,
    this.eduLevel,
    required this.email,
    this.eyeColour,
    this.facialHair,
    this.filmTaste,
    this.gender,
    this.glasses,
    this.hairColour,
    this.height,
    this.horoscope,
    required this.id,
    this.interests,
    this.jobType,
    this.languages,
    this.maritalStatus,
    this.match,
    this.maxAge,
    this.minAge,
    this.musicalTaste,
    required this.name,
    this.photos,
    this.piercing,
    this.religion,
    this.shape,
    this.sportiness,
    this.tattoo,
    this.theirOne,
    this.username,
  });

  factory PersonAllDTO.fromJson(Map<String, dynamic> json) =>
      _$PersonAllDTOFromJson(json);

  @JsonKey(name: 'age')
  final int? age;
  @JsonKey(name: 'alcohol')
  final int? alcohol;
  @JsonKey(name: 'bio')
  final String? bio;
  @JsonKey(name: 'birthDate', toJson: _dateToJson)
  final DateTime birthDate;
  @JsonKey(name: 'breastSize')
  final int? breastSize;
  @JsonKey(name: 'chemistry')
  final int? chemistry;
  @JsonKey(name: 'childrenNumber')
  final int? childrenNumber;
  @JsonKey(name: 'cigarettes')
  final int? cigarettes;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'eduLevel')
  final int? eduLevel;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'eyeColour')
  final int? eyeColour;
  @JsonKey(name: 'facialHair')
  final int? facialHair;
  @JsonKey(name: 'filmTaste', defaultValue: <int>[])
  final List<int>? filmTaste;
  @JsonKey(name: 'gender')
  final int? gender;
  @JsonKey(name: 'glasses')
  final int? glasses;
  @JsonKey(name: 'hairColour')
  final int? hairColour;
  @JsonKey(name: 'height')
  final int? height;
  @JsonKey(name: 'horoscope')
  final int? horoscope;
  @JsonKey(name: 'id')
  final num id;
  @JsonKey(name: 'interests', defaultValue: <int>[])
  final List<int>? interests;
  @JsonKey(name: 'jobType')
  final int? jobType;
  @JsonKey(name: 'languages', defaultValue: <int>[])
  final List<int>? languages;
  @JsonKey(name: 'maritalStatus')
  final int? maritalStatus;
  @JsonKey(name: 'match')
  final Match? match;
  @JsonKey(name: 'maxAge')
  final int? maxAge;
  @JsonKey(name: 'minAge')
  final int? minAge;
  @JsonKey(name: 'musicalTaste', defaultValue: <int>[])
  final List<int>? musicalTaste;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'photos', defaultValue: <String>[])
  final List<String>? photos;
  @JsonKey(name: 'piercing')
  final int? piercing;
  @JsonKey(name: 'religion')
  final int? religion;
  @JsonKey(name: 'shape')
  final int? shape;
  @JsonKey(name: 'sportiness')
  final int? sportiness;
  @JsonKey(name: 'tattoo')
  final int? tattoo;
  @JsonKey(name: 'theirOne')
  final YourOneDTO? theirOne;
  @JsonKey(name: 'username')
  final String? username;
  static const fromJsonFactory = _$PersonAllDTOFromJson;
  static const toJsonFactory = _$PersonAllDTOToJson;
  Map<String, dynamic> toJson() => _$PersonAllDTOToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PersonAllDTO &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.alcohol, alcohol) ||
                const DeepCollectionEquality()
                    .equals(other.alcohol, alcohol)) &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.breastSize, breastSize) ||
                const DeepCollectionEquality()
                    .equals(other.breastSize, breastSize)) &&
            (identical(other.chemistry, chemistry) ||
                const DeepCollectionEquality()
                    .equals(other.chemistry, chemistry)) &&
            (identical(other.childrenNumber, childrenNumber) ||
                const DeepCollectionEquality()
                    .equals(other.childrenNumber, childrenNumber)) &&
            (identical(other.cigarettes, cigarettes) ||
                const DeepCollectionEquality()
                    .equals(other.cigarettes, cigarettes)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.eduLevel, eduLevel) ||
                const DeepCollectionEquality()
                    .equals(other.eduLevel, eduLevel)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.eyeColour, eyeColour) ||
                const DeepCollectionEquality()
                    .equals(other.eyeColour, eyeColour)) &&
            (identical(other.facialHair, facialHair) ||
                const DeepCollectionEquality()
                    .equals(other.facialHair, facialHair)) &&
            (identical(other.filmTaste, filmTaste) ||
                const DeepCollectionEquality()
                    .equals(other.filmTaste, filmTaste)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.glasses, glasses) ||
                const DeepCollectionEquality()
                    .equals(other.glasses, glasses)) &&
            (identical(other.hairColour, hairColour) ||
                const DeepCollectionEquality()
                    .equals(other.hairColour, hairColour)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.horoscope, horoscope) ||
                const DeepCollectionEquality()
                    .equals(other.horoscope, horoscope)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.interests, interests) ||
                const DeepCollectionEquality()
                    .equals(other.interests, interests)) &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.languages, languages) ||
                const DeepCollectionEquality()
                    .equals(other.languages, languages)) &&
            (identical(other.maritalStatus, maritalStatus) ||
                const DeepCollectionEquality()
                    .equals(other.maritalStatus, maritalStatus)) &&
            (identical(other.match, match) ||
                const DeepCollectionEquality().equals(other.match, match)) &&
            (identical(other.maxAge, maxAge) ||
                const DeepCollectionEquality().equals(other.maxAge, maxAge)) &&
            (identical(other.minAge, minAge) || const DeepCollectionEquality().equals(other.minAge, minAge)) &&
            (identical(other.musicalTaste, musicalTaste) || const DeepCollectionEquality().equals(other.musicalTaste, musicalTaste)) &&
            (identical(other.name, name) || const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.photos, photos) || const DeepCollectionEquality().equals(other.photos, photos)) &&
            (identical(other.piercing, piercing) || const DeepCollectionEquality().equals(other.piercing, piercing)) &&
            (identical(other.religion, religion) || const DeepCollectionEquality().equals(other.religion, religion)) &&
            (identical(other.shape, shape) || const DeepCollectionEquality().equals(other.shape, shape)) &&
            (identical(other.sportiness, sportiness) || const DeepCollectionEquality().equals(other.sportiness, sportiness)) &&
            (identical(other.tattoo, tattoo) || const DeepCollectionEquality().equals(other.tattoo, tattoo)) &&
            (identical(other.theirOne, theirOne) || const DeepCollectionEquality().equals(other.theirOne, theirOne)) &&
            (identical(other.username, username) || const DeepCollectionEquality().equals(other.username, username)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(alcohol) ^
      const DeepCollectionEquality().hash(bio) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(breastSize) ^
      const DeepCollectionEquality().hash(chemistry) ^
      const DeepCollectionEquality().hash(childrenNumber) ^
      const DeepCollectionEquality().hash(cigarettes) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(eduLevel) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(eyeColour) ^
      const DeepCollectionEquality().hash(facialHair) ^
      const DeepCollectionEquality().hash(filmTaste) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(glasses) ^
      const DeepCollectionEquality().hash(hairColour) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(horoscope) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(interests) ^
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(languages) ^
      const DeepCollectionEquality().hash(maritalStatus) ^
      const DeepCollectionEquality().hash(match) ^
      const DeepCollectionEquality().hash(maxAge) ^
      const DeepCollectionEquality().hash(minAge) ^
      const DeepCollectionEquality().hash(musicalTaste) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(photos) ^
      const DeepCollectionEquality().hash(piercing) ^
      const DeepCollectionEquality().hash(religion) ^
      const DeepCollectionEquality().hash(shape) ^
      const DeepCollectionEquality().hash(sportiness) ^
      const DeepCollectionEquality().hash(tattoo) ^
      const DeepCollectionEquality().hash(theirOne) ^
      const DeepCollectionEquality().hash(username) ^
      runtimeType.hashCode;
}

extension $PersonAllDTOExtension on PersonAllDTO {
  PersonAllDTO copyWith(
      {int? age,
      int? alcohol,
      String? bio,
      DateTime? birthDate,
      int? breastSize,
      int? chemistry,
      int? childrenNumber,
      int? cigarettes,
      String? city,
      int? eduLevel,
      String? email,
      int? eyeColour,
      int? facialHair,
      List<int>? filmTaste,
      int? gender,
      int? glasses,
      int? hairColour,
      int? height,
      int? horoscope,
      num? id,
      List<int>? interests,
      int? jobType,
      List<int>? languages,
      int? maritalStatus,
      Match? match,
      int? maxAge,
      int? minAge,
      List<int>? musicalTaste,
      String? name,
      List<String>? photos,
      int? piercing,
      int? religion,
      int? shape,
      int? sportiness,
      int? tattoo,
      YourOneDTO? theirOne,
      String? username}) {
    return PersonAllDTO(
        age: age ?? this.age,
        alcohol: alcohol ?? this.alcohol,
        bio: bio ?? this.bio,
        birthDate: birthDate ?? this.birthDate,
        breastSize: breastSize ?? this.breastSize,
        chemistry: chemistry ?? this.chemistry,
        childrenNumber: childrenNumber ?? this.childrenNumber,
        cigarettes: cigarettes ?? this.cigarettes,
        city: city ?? this.city,
        eduLevel: eduLevel ?? this.eduLevel,
        email: email ?? this.email,
        eyeColour: eyeColour ?? this.eyeColour,
        facialHair: facialHair ?? this.facialHair,
        filmTaste: filmTaste ?? this.filmTaste,
        gender: gender ?? this.gender,
        glasses: glasses ?? this.glasses,
        hairColour: hairColour ?? this.hairColour,
        height: height ?? this.height,
        horoscope: horoscope ?? this.horoscope,
        id: id ?? this.id,
        interests: interests ?? this.interests,
        jobType: jobType ?? this.jobType,
        languages: languages ?? this.languages,
        maritalStatus: maritalStatus ?? this.maritalStatus,
        match: match ?? this.match,
        maxAge: maxAge ?? this.maxAge,
        minAge: minAge ?? this.minAge,
        musicalTaste: musicalTaste ?? this.musicalTaste,
        name: name ?? this.name,
        photos: photos ?? this.photos,
        piercing: piercing ?? this.piercing,
        religion: religion ?? this.religion,
        shape: shape ?? this.shape,
        sportiness: sportiness ?? this.sportiness,
        tattoo: tattoo ?? this.tattoo,
        theirOne: theirOne ?? this.theirOne,
        username: username ?? this.username);
  }

  PersonAllDTO copyWithWrapped(
      {Wrapped<int?>? age,
      Wrapped<int?>? alcohol,
      Wrapped<String?>? bio,
      Wrapped<DateTime>? birthDate,
      Wrapped<int?>? breastSize,
      Wrapped<int?>? chemistry,
      Wrapped<int?>? childrenNumber,
      Wrapped<int?>? cigarettes,
      Wrapped<String?>? city,
      Wrapped<int?>? eduLevel,
      Wrapped<String>? email,
      Wrapped<int?>? eyeColour,
      Wrapped<int?>? facialHair,
      Wrapped<List<int>?>? filmTaste,
      Wrapped<int?>? gender,
      Wrapped<int?>? glasses,
      Wrapped<int?>? hairColour,
      Wrapped<int?>? height,
      Wrapped<int?>? horoscope,
      Wrapped<num>? id,
      Wrapped<List<int>?>? interests,
      Wrapped<int?>? jobType,
      Wrapped<List<int>?>? languages,
      Wrapped<int?>? maritalStatus,
      Wrapped<Match?>? match,
      Wrapped<int?>? maxAge,
      Wrapped<int?>? minAge,
      Wrapped<List<int>?>? musicalTaste,
      Wrapped<String>? name,
      Wrapped<List<String>?>? photos,
      Wrapped<int?>? piercing,
      Wrapped<int?>? religion,
      Wrapped<int?>? shape,
      Wrapped<int?>? sportiness,
      Wrapped<int?>? tattoo,
      Wrapped<YourOneDTO?>? theirOne,
      Wrapped<String?>? username}) {
    return PersonAllDTO(
        age: (age != null ? age.value : this.age),
        alcohol: (alcohol != null ? alcohol.value : this.alcohol),
        bio: (bio != null ? bio.value : this.bio),
        birthDate: (birthDate != null ? birthDate.value : this.birthDate),
        breastSize: (breastSize != null ? breastSize.value : this.breastSize),
        chemistry: (chemistry != null ? chemistry.value : this.chemistry),
        childrenNumber: (childrenNumber != null
            ? childrenNumber.value
            : this.childrenNumber),
        cigarettes: (cigarettes != null ? cigarettes.value : this.cigarettes),
        city: (city != null ? city.value : this.city),
        eduLevel: (eduLevel != null ? eduLevel.value : this.eduLevel),
        email: (email != null ? email.value : this.email),
        eyeColour: (eyeColour != null ? eyeColour.value : this.eyeColour),
        facialHair: (facialHair != null ? facialHair.value : this.facialHair),
        filmTaste: (filmTaste != null ? filmTaste.value : this.filmTaste),
        gender: (gender != null ? gender.value : this.gender),
        glasses: (glasses != null ? glasses.value : this.glasses),
        hairColour: (hairColour != null ? hairColour.value : this.hairColour),
        height: (height != null ? height.value : this.height),
        horoscope: (horoscope != null ? horoscope.value : this.horoscope),
        id: (id != null ? id.value : this.id),
        interests: (interests != null ? interests.value : this.interests),
        jobType: (jobType != null ? jobType.value : this.jobType),
        languages: (languages != null ? languages.value : this.languages),
        maritalStatus:
            (maritalStatus != null ? maritalStatus.value : this.maritalStatus),
        match: (match != null ? match.value : this.match),
        maxAge: (maxAge != null ? maxAge.value : this.maxAge),
        minAge: (minAge != null ? minAge.value : this.minAge),
        musicalTaste:
            (musicalTaste != null ? musicalTaste.value : this.musicalTaste),
        name: (name != null ? name.value : this.name),
        photos: (photos != null ? photos.value : this.photos),
        piercing: (piercing != null ? piercing.value : this.piercing),
        religion: (religion != null ? religion.value : this.religion),
        shape: (shape != null ? shape.value : this.shape),
        sportiness: (sportiness != null ? sportiness.value : this.sportiness),
        tattoo: (tattoo != null ? tattoo.value : this.tattoo),
        theirOne: (theirOne != null ? theirOne.value : this.theirOne),
        username: (username != null ? username.value : this.username));
  }
}

@JsonSerializable(explicitToJson: true)
class Photo {
  Photo({
    this.id,
    required this.name,
  });

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);

  @JsonKey(name: 'id')
  final num? id;
  @JsonKey(name: 'name')
  final String name;
  static const fromJsonFactory = _$PhotoFromJson;
  static const toJsonFactory = _$PhotoToJson;
  Map<String, dynamic> toJson() => _$PhotoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Photo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $PhotoExtension on Photo {
  Photo copyWith({num? id, String? name}) {
    return Photo(id: id ?? this.id, name: name ?? this.name);
  }

  Photo copyWithWrapped({Wrapped<num?>? id, Wrapped<String>? name}) {
    return Photo(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class RecentChatDTO {
  RecentChatDTO({
    this.lastMessage,
    required this.newMessagesCount,
    this.partner,
  });

  factory RecentChatDTO.fromJson(Map<String, dynamic> json) =>
      _$RecentChatDTOFromJson(json);

  @JsonKey(name: 'lastMessage')
  final ChatNotification? lastMessage;
  @JsonKey(name: 'newMessagesCount')
  final int newMessagesCount;
  @JsonKey(name: 'partner')
  final PersonAllDTO? partner;
  static const fromJsonFactory = _$RecentChatDTOFromJson;
  static const toJsonFactory = _$RecentChatDTOToJson;
  Map<String, dynamic> toJson() => _$RecentChatDTOToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RecentChatDTO &&
            (identical(other.lastMessage, lastMessage) ||
                const DeepCollectionEquality()
                    .equals(other.lastMessage, lastMessage)) &&
            (identical(other.newMessagesCount, newMessagesCount) ||
                const DeepCollectionEquality()
                    .equals(other.newMessagesCount, newMessagesCount)) &&
            (identical(other.partner, partner) ||
                const DeepCollectionEquality().equals(other.partner, partner)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lastMessage) ^
      const DeepCollectionEquality().hash(newMessagesCount) ^
      const DeepCollectionEquality().hash(partner) ^
      runtimeType.hashCode;
}

extension $RecentChatDTOExtension on RecentChatDTO {
  RecentChatDTO copyWith(
      {ChatNotification? lastMessage,
      int? newMessagesCount,
      PersonAllDTO? partner}) {
    return RecentChatDTO(
        lastMessage: lastMessage ?? this.lastMessage,
        newMessagesCount: newMessagesCount ?? this.newMessagesCount,
        partner: partner ?? this.partner);
  }

  RecentChatDTO copyWithWrapped(
      {Wrapped<ChatNotification?>? lastMessage,
      Wrapped<int>? newMessagesCount,
      Wrapped<PersonAllDTO?>? partner}) {
    return RecentChatDTO(
        lastMessage:
            (lastMessage != null ? lastMessage.value : this.lastMessage),
        newMessagesCount: (newMessagesCount != null
            ? newMessagesCount.value
            : this.newMessagesCount),
        partner: (partner != null ? partner.value : this.partner));
  }
}

@JsonSerializable(explicitToJson: true)
class RegistrationDTO {
  RegistrationDTO({
    required this.username,
    required this.password,
    required this.name,
    required this.email,
    required this.birthDate,
    this.height,
    this.gender,
    this.tattoo,
    this.eyeColour,
    this.hairColour,
    this.piercing,
    this.glasses,
    this.sportiness,
    this.breastSize,
    this.bio,
    this.city,
    this.jobType,
    this.eduLevel,
    this.cigarettes,
    this.alcohol,
    this.childrenNumber,
    this.maritalStatus,
    this.musicalTaste,
    this.filmTaste,
    this.religion,
    this.horoscope,
    this.languages,
    this.interests,
    this.shape,
    this.facialHair,
    this.minAge,
    this.maxAge,
    this.chemistry,
    this.theirOne,
  });

  factory RegistrationDTO.fromJson(Map<String, dynamic> json) =>
      _$RegistrationDTOFromJson(json);

  @JsonKey(name: 'username')
  final String username;
  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'birthDate', toJson: _dateToJson)
  final DateTime birthDate;
  @JsonKey(name: 'height')
  final int? height;
  @JsonKey(name: 'gender')
  final int? gender;
  @JsonKey(name: 'tattoo')
  final int? tattoo;
  @JsonKey(name: 'eyeColour')
  final int? eyeColour;
  @JsonKey(name: 'hairColour')
  final int? hairColour;
  @JsonKey(name: 'piercing')
  final int? piercing;
  @JsonKey(name: 'glasses')
  final int? glasses;
  @JsonKey(name: 'sportiness')
  final int? sportiness;
  @JsonKey(name: 'breastSize')
  final int? breastSize;
  @JsonKey(name: 'bio')
  final String? bio;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'jobType')
  final int? jobType;
  @JsonKey(name: 'eduLevel')
  final int? eduLevel;
  @JsonKey(name: 'cigarettes')
  final int? cigarettes;
  @JsonKey(name: 'alcohol')
  final int? alcohol;
  @JsonKey(name: 'childrenNumber')
  final int? childrenNumber;
  @JsonKey(name: 'maritalStatus')
  final int? maritalStatus;
  @JsonKey(name: 'musicalTaste', defaultValue: <int>[])
  final List<int>? musicalTaste;
  @JsonKey(name: 'filmTaste', defaultValue: <int>[])
  final List<int>? filmTaste;
  @JsonKey(name: 'religion')
  final int? religion;
  @JsonKey(name: 'horoscope')
  final int? horoscope;
  @JsonKey(name: 'languages', defaultValue: <int>[])
  final List<int>? languages;
  @JsonKey(name: 'interests', defaultValue: <int>[])
  final List<int>? interests;
  @JsonKey(name: 'shape')
  final int? shape;
  @JsonKey(name: 'facialHair')
  final int? facialHair;
  @JsonKey(name: 'minAge')
  final int? minAge;
  @JsonKey(name: 'maxAge')
  final int? maxAge;
  @JsonKey(name: 'chemistry')
  final int? chemistry;
  @JsonKey(name: 'theirOne')
  final YourOneDTO? theirOne;
  static const fromJsonFactory = _$RegistrationDTOFromJson;
  static const toJsonFactory = _$RegistrationDTOToJson;
  Map<String, dynamic> toJson() => _$RegistrationDTOToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegistrationDTO &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.tattoo, tattoo) ||
                const DeepCollectionEquality().equals(other.tattoo, tattoo)) &&
            (identical(other.eyeColour, eyeColour) ||
                const DeepCollectionEquality()
                    .equals(other.eyeColour, eyeColour)) &&
            (identical(other.hairColour, hairColour) ||
                const DeepCollectionEquality()
                    .equals(other.hairColour, hairColour)) &&
            (identical(other.piercing, piercing) ||
                const DeepCollectionEquality()
                    .equals(other.piercing, piercing)) &&
            (identical(other.glasses, glasses) ||
                const DeepCollectionEquality()
                    .equals(other.glasses, glasses)) &&
            (identical(other.sportiness, sportiness) ||
                const DeepCollectionEquality()
                    .equals(other.sportiness, sportiness)) &&
            (identical(other.breastSize, breastSize) ||
                const DeepCollectionEquality()
                    .equals(other.breastSize, breastSize)) &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.eduLevel, eduLevel) ||
                const DeepCollectionEquality()
                    .equals(other.eduLevel, eduLevel)) &&
            (identical(other.cigarettes, cigarettes) ||
                const DeepCollectionEquality()
                    .equals(other.cigarettes, cigarettes)) &&
            (identical(other.alcohol, alcohol) ||
                const DeepCollectionEquality()
                    .equals(other.alcohol, alcohol)) &&
            (identical(other.childrenNumber, childrenNumber) ||
                const DeepCollectionEquality()
                    .equals(other.childrenNumber, childrenNumber)) &&
            (identical(other.maritalStatus, maritalStatus) ||
                const DeepCollectionEquality()
                    .equals(other.maritalStatus, maritalStatus)) &&
            (identical(other.musicalTaste, musicalTaste) ||
                const DeepCollectionEquality()
                    .equals(other.musicalTaste, musicalTaste)) &&
            (identical(other.filmTaste, filmTaste) ||
                const DeepCollectionEquality()
                    .equals(other.filmTaste, filmTaste)) &&
            (identical(other.religion, religion) ||
                const DeepCollectionEquality()
                    .equals(other.religion, religion)) &&
            (identical(other.horoscope, horoscope) || const DeepCollectionEquality().equals(other.horoscope, horoscope)) &&
            (identical(other.languages, languages) || const DeepCollectionEquality().equals(other.languages, languages)) &&
            (identical(other.interests, interests) || const DeepCollectionEquality().equals(other.interests, interests)) &&
            (identical(other.shape, shape) || const DeepCollectionEquality().equals(other.shape, shape)) &&
            (identical(other.facialHair, facialHair) || const DeepCollectionEquality().equals(other.facialHair, facialHair)) &&
            (identical(other.minAge, minAge) || const DeepCollectionEquality().equals(other.minAge, minAge)) &&
            (identical(other.maxAge, maxAge) || const DeepCollectionEquality().equals(other.maxAge, maxAge)) &&
            (identical(other.chemistry, chemistry) || const DeepCollectionEquality().equals(other.chemistry, chemistry)) &&
            (identical(other.theirOne, theirOne) || const DeepCollectionEquality().equals(other.theirOne, theirOne)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(tattoo) ^
      const DeepCollectionEquality().hash(eyeColour) ^
      const DeepCollectionEquality().hash(hairColour) ^
      const DeepCollectionEquality().hash(piercing) ^
      const DeepCollectionEquality().hash(glasses) ^
      const DeepCollectionEquality().hash(sportiness) ^
      const DeepCollectionEquality().hash(breastSize) ^
      const DeepCollectionEquality().hash(bio) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(eduLevel) ^
      const DeepCollectionEquality().hash(cigarettes) ^
      const DeepCollectionEquality().hash(alcohol) ^
      const DeepCollectionEquality().hash(childrenNumber) ^
      const DeepCollectionEquality().hash(maritalStatus) ^
      const DeepCollectionEquality().hash(musicalTaste) ^
      const DeepCollectionEquality().hash(filmTaste) ^
      const DeepCollectionEquality().hash(religion) ^
      const DeepCollectionEquality().hash(horoscope) ^
      const DeepCollectionEquality().hash(languages) ^
      const DeepCollectionEquality().hash(interests) ^
      const DeepCollectionEquality().hash(shape) ^
      const DeepCollectionEquality().hash(facialHair) ^
      const DeepCollectionEquality().hash(minAge) ^
      const DeepCollectionEquality().hash(maxAge) ^
      const DeepCollectionEquality().hash(chemistry) ^
      const DeepCollectionEquality().hash(theirOne) ^
      runtimeType.hashCode;
}

extension $RegistrationDTOExtension on RegistrationDTO {
  RegistrationDTO copyWith(
      {String? username,
      String? password,
      String? name,
      String? email,
      DateTime? birthDate,
      int? height,
      int? gender,
      int? tattoo,
      int? eyeColour,
      int? hairColour,
      int? piercing,
      int? glasses,
      int? sportiness,
      int? breastSize,
      String? bio,
      String? city,
      int? jobType,
      int? eduLevel,
      int? cigarettes,
      int? alcohol,
      int? childrenNumber,
      int? maritalStatus,
      List<int>? musicalTaste,
      List<int>? filmTaste,
      int? religion,
      int? horoscope,
      List<int>? languages,
      List<int>? interests,
      int? shape,
      int? facialHair,
      int? minAge,
      int? maxAge,
      int? chemistry,
      YourOneDTO? theirOne}) {
    return RegistrationDTO(
        username: username ?? this.username,
        password: password ?? this.password,
        name: name ?? this.name,
        email: email ?? this.email,
        birthDate: birthDate ?? this.birthDate,
        height: height ?? this.height,
        gender: gender ?? this.gender,
        tattoo: tattoo ?? this.tattoo,
        eyeColour: eyeColour ?? this.eyeColour,
        hairColour: hairColour ?? this.hairColour,
        piercing: piercing ?? this.piercing,
        glasses: glasses ?? this.glasses,
        sportiness: sportiness ?? this.sportiness,
        breastSize: breastSize ?? this.breastSize,
        bio: bio ?? this.bio,
        city: city ?? this.city,
        jobType: jobType ?? this.jobType,
        eduLevel: eduLevel ?? this.eduLevel,
        cigarettes: cigarettes ?? this.cigarettes,
        alcohol: alcohol ?? this.alcohol,
        childrenNumber: childrenNumber ?? this.childrenNumber,
        maritalStatus: maritalStatus ?? this.maritalStatus,
        musicalTaste: musicalTaste ?? this.musicalTaste,
        filmTaste: filmTaste ?? this.filmTaste,
        religion: religion ?? this.religion,
        horoscope: horoscope ?? this.horoscope,
        languages: languages ?? this.languages,
        interests: interests ?? this.interests,
        shape: shape ?? this.shape,
        facialHair: facialHair ?? this.facialHair,
        minAge: minAge ?? this.minAge,
        maxAge: maxAge ?? this.maxAge,
        chemistry: chemistry ?? this.chemistry,
        theirOne: theirOne ?? this.theirOne);
  }

  RegistrationDTO copyWithWrapped(
      {Wrapped<String>? username,
      Wrapped<String>? password,
      Wrapped<String>? name,
      Wrapped<String>? email,
      Wrapped<DateTime>? birthDate,
      Wrapped<int?>? height,
      Wrapped<int?>? gender,
      Wrapped<int?>? tattoo,
      Wrapped<int?>? eyeColour,
      Wrapped<int?>? hairColour,
      Wrapped<int?>? piercing,
      Wrapped<int?>? glasses,
      Wrapped<int?>? sportiness,
      Wrapped<int?>? breastSize,
      Wrapped<String?>? bio,
      Wrapped<String?>? city,
      Wrapped<int?>? jobType,
      Wrapped<int?>? eduLevel,
      Wrapped<int?>? cigarettes,
      Wrapped<int?>? alcohol,
      Wrapped<int?>? childrenNumber,
      Wrapped<int?>? maritalStatus,
      Wrapped<List<int>?>? musicalTaste,
      Wrapped<List<int>?>? filmTaste,
      Wrapped<int?>? religion,
      Wrapped<int?>? horoscope,
      Wrapped<List<int>?>? languages,
      Wrapped<List<int>?>? interests,
      Wrapped<int?>? shape,
      Wrapped<int?>? facialHair,
      Wrapped<int?>? minAge,
      Wrapped<int?>? maxAge,
      Wrapped<int?>? chemistry,
      Wrapped<YourOneDTO?>? theirOne}) {
    return RegistrationDTO(
        username: (username != null ? username.value : this.username),
        password: (password != null ? password.value : this.password),
        name: (name != null ? name.value : this.name),
        email: (email != null ? email.value : this.email),
        birthDate: (birthDate != null ? birthDate.value : this.birthDate),
        height: (height != null ? height.value : this.height),
        gender: (gender != null ? gender.value : this.gender),
        tattoo: (tattoo != null ? tattoo.value : this.tattoo),
        eyeColour: (eyeColour != null ? eyeColour.value : this.eyeColour),
        hairColour: (hairColour != null ? hairColour.value : this.hairColour),
        piercing: (piercing != null ? piercing.value : this.piercing),
        glasses: (glasses != null ? glasses.value : this.glasses),
        sportiness: (sportiness != null ? sportiness.value : this.sportiness),
        breastSize: (breastSize != null ? breastSize.value : this.breastSize),
        bio: (bio != null ? bio.value : this.bio),
        city: (city != null ? city.value : this.city),
        jobType: (jobType != null ? jobType.value : this.jobType),
        eduLevel: (eduLevel != null ? eduLevel.value : this.eduLevel),
        cigarettes: (cigarettes != null ? cigarettes.value : this.cigarettes),
        alcohol: (alcohol != null ? alcohol.value : this.alcohol),
        childrenNumber: (childrenNumber != null
            ? childrenNumber.value
            : this.childrenNumber),
        maritalStatus:
            (maritalStatus != null ? maritalStatus.value : this.maritalStatus),
        musicalTaste:
            (musicalTaste != null ? musicalTaste.value : this.musicalTaste),
        filmTaste: (filmTaste != null ? filmTaste.value : this.filmTaste),
        religion: (religion != null ? religion.value : this.religion),
        horoscope: (horoscope != null ? horoscope.value : this.horoscope),
        languages: (languages != null ? languages.value : this.languages),
        interests: (interests != null ? interests.value : this.interests),
        shape: (shape != null ? shape.value : this.shape),
        facialHair: (facialHair != null ? facialHair.value : this.facialHair),
        minAge: (minAge != null ? minAge.value : this.minAge),
        maxAge: (maxAge != null ? maxAge.value : this.maxAge),
        chemistry: (chemistry != null ? chemistry.value : this.chemistry),
        theirOne: (theirOne != null ? theirOne.value : this.theirOne));
  }
}

@JsonSerializable(explicitToJson: true)
class Resource {
  Resource({
    this.description,
    this.file,
    this.filename,
    this.inputStream,
    this.open,
    this.readable,
    this.uri,
    this.url,
  });

  factory Resource.fromJson(Map<String, dynamic> json) =>
      _$ResourceFromJson(json);

  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'file')
  final File? file;
  @JsonKey(name: 'filename')
  final String? filename;
  @JsonKey(name: 'inputStream')
  final InputStream? inputStream;
  @JsonKey(name: 'open')
  final bool? open;
  @JsonKey(name: 'readable')
  final bool? readable;
  @JsonKey(name: 'uri')
  final Uri? uri;
  @JsonKey(name: 'url')
  final Url? url;
  static const fromJsonFactory = _$ResourceFromJson;
  static const toJsonFactory = _$ResourceToJson;
  Map<String, dynamic> toJson() => _$ResourceToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Resource &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)) &&
            (identical(other.filename, filename) ||
                const DeepCollectionEquality()
                    .equals(other.filename, filename)) &&
            (identical(other.inputStream, inputStream) ||
                const DeepCollectionEquality()
                    .equals(other.inputStream, inputStream)) &&
            (identical(other.open, open) ||
                const DeepCollectionEquality().equals(other.open, open)) &&
            (identical(other.readable, readable) ||
                const DeepCollectionEquality()
                    .equals(other.readable, readable)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(file) ^
      const DeepCollectionEquality().hash(filename) ^
      const DeepCollectionEquality().hash(inputStream) ^
      const DeepCollectionEquality().hash(open) ^
      const DeepCollectionEquality().hash(readable) ^
      const DeepCollectionEquality().hash(uri) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ResourceExtension on Resource {
  Resource copyWith(
      {String? description,
      File? file,
      String? filename,
      InputStream? inputStream,
      bool? open,
      bool? readable,
      Uri? uri,
      Url? url}) {
    return Resource(
        description: description ?? this.description,
        file: file ?? this.file,
        filename: filename ?? this.filename,
        inputStream: inputStream ?? this.inputStream,
        open: open ?? this.open,
        readable: readable ?? this.readable,
        uri: uri ?? this.uri,
        url: url ?? this.url);
  }

  Resource copyWithWrapped(
      {Wrapped<String?>? description,
      Wrapped<File?>? file,
      Wrapped<String?>? filename,
      Wrapped<InputStream?>? inputStream,
      Wrapped<bool?>? open,
      Wrapped<bool?>? readable,
      Wrapped<Uri?>? uri,
      Wrapped<Url?>? url}) {
    return Resource(
        description:
            (description != null ? description.value : this.description),
        file: (file != null ? file.value : this.file),
        filename: (filename != null ? filename.value : this.filename),
        inputStream:
            (inputStream != null ? inputStream.value : this.inputStream),
        open: (open != null ? open.value : this.open),
        readable: (readable != null ? readable.value : this.readable),
        uri: (uri != null ? uri.value : this.uri),
        url: (url != null ? url.value : this.url));
  }
}

@JsonSerializable(explicitToJson: true)
class Tokens {
  Tokens({
    required this.accessToken,
    required this.refreshToken,
    required this.userId,
  });

  factory Tokens.fromJson(Map<String, dynamic> json) => _$TokensFromJson(json);

  @JsonKey(name: 'accessToken')
  final String accessToken;
  @JsonKey(name: 'refreshToken')
  final String refreshToken;
  @JsonKey(name: 'userId')
  final num userId;
  static const fromJsonFactory = _$TokensFromJson;
  static const toJsonFactory = _$TokensToJson;
  Map<String, dynamic> toJson() => _$TokensToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Tokens &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(userId) ^
      runtimeType.hashCode;
}

extension $TokensExtension on Tokens {
  Tokens copyWith({String? accessToken, String? refreshToken, num? userId}) {
    return Tokens(
        accessToken: accessToken ?? this.accessToken,
        refreshToken: refreshToken ?? this.refreshToken,
        userId: userId ?? this.userId);
  }

  Tokens copyWithWrapped(
      {Wrapped<String>? accessToken,
      Wrapped<String>? refreshToken,
      Wrapped<num>? userId}) {
    return Tokens(
        accessToken:
            (accessToken != null ? accessToken.value : this.accessToken),
        refreshToken:
            (refreshToken != null ? refreshToken.value : this.refreshToken),
        userId: (userId != null ? userId.value : this.userId));
  }
}

@JsonSerializable(explicitToJson: true)
class Uri {
  Uri({
    this.absolute,
    this.authority,
    this.fragment,
    this.host,
    this.opaque,
    this.path,
    this.port,
    this.query,
    this.rawAuthority,
    this.rawFragment,
    this.rawPath,
    this.rawQuery,
    this.rawSchemeSpecificPart,
    this.rawUserInfo,
    this.scheme,
    this.schemeSpecificPart,
    this.userInfo,
  });

  factory Uri.fromJson(Map<String, dynamic> json) => _$UriFromJson(json);

  @JsonKey(name: 'absolute')
  final bool? absolute;
  @JsonKey(name: 'authority')
  final String? authority;
  @JsonKey(name: 'fragment')
  final String? fragment;
  @JsonKey(name: 'host')
  final String? host;
  @JsonKey(name: 'opaque')
  final bool? opaque;
  @JsonKey(name: 'path')
  final String? path;
  @JsonKey(name: 'port')
  final int? port;
  @JsonKey(name: 'query')
  final String? query;
  @JsonKey(name: 'rawAuthority')
  final String? rawAuthority;
  @JsonKey(name: 'rawFragment')
  final String? rawFragment;
  @JsonKey(name: 'rawPath')
  final String? rawPath;
  @JsonKey(name: 'rawQuery')
  final String? rawQuery;
  @JsonKey(name: 'rawSchemeSpecificPart')
  final String? rawSchemeSpecificPart;
  @JsonKey(name: 'rawUserInfo')
  final String? rawUserInfo;
  @JsonKey(name: 'scheme')
  final String? scheme;
  @JsonKey(name: 'schemeSpecificPart')
  final String? schemeSpecificPart;
  @JsonKey(name: 'userInfo')
  final String? userInfo;
  static const fromJsonFactory = _$UriFromJson;
  static const toJsonFactory = _$UriToJson;
  Map<String, dynamic> toJson() => _$UriToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Uri &&
            (identical(other.absolute, absolute) ||
                const DeepCollectionEquality()
                    .equals(other.absolute, absolute)) &&
            (identical(other.authority, authority) ||
                const DeepCollectionEquality()
                    .equals(other.authority, authority)) &&
            (identical(other.fragment, fragment) ||
                const DeepCollectionEquality()
                    .equals(other.fragment, fragment)) &&
            (identical(other.host, host) ||
                const DeepCollectionEquality().equals(other.host, host)) &&
            (identical(other.opaque, opaque) ||
                const DeepCollectionEquality().equals(other.opaque, opaque)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.port, port) ||
                const DeepCollectionEquality().equals(other.port, port)) &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)) &&
            (identical(other.rawAuthority, rawAuthority) ||
                const DeepCollectionEquality()
                    .equals(other.rawAuthority, rawAuthority)) &&
            (identical(other.rawFragment, rawFragment) ||
                const DeepCollectionEquality()
                    .equals(other.rawFragment, rawFragment)) &&
            (identical(other.rawPath, rawPath) ||
                const DeepCollectionEquality()
                    .equals(other.rawPath, rawPath)) &&
            (identical(other.rawQuery, rawQuery) ||
                const DeepCollectionEquality()
                    .equals(other.rawQuery, rawQuery)) &&
            (identical(other.rawSchemeSpecificPart, rawSchemeSpecificPart) ||
                const DeepCollectionEquality().equals(
                    other.rawSchemeSpecificPart, rawSchemeSpecificPart)) &&
            (identical(other.rawUserInfo, rawUserInfo) ||
                const DeepCollectionEquality()
                    .equals(other.rawUserInfo, rawUserInfo)) &&
            (identical(other.scheme, scheme) ||
                const DeepCollectionEquality().equals(other.scheme, scheme)) &&
            (identical(other.schemeSpecificPart, schemeSpecificPart) ||
                const DeepCollectionEquality()
                    .equals(other.schemeSpecificPart, schemeSpecificPart)) &&
            (identical(other.userInfo, userInfo) ||
                const DeepCollectionEquality()
                    .equals(other.userInfo, userInfo)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(absolute) ^
      const DeepCollectionEquality().hash(authority) ^
      const DeepCollectionEquality().hash(fragment) ^
      const DeepCollectionEquality().hash(host) ^
      const DeepCollectionEquality().hash(opaque) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(port) ^
      const DeepCollectionEquality().hash(query) ^
      const DeepCollectionEquality().hash(rawAuthority) ^
      const DeepCollectionEquality().hash(rawFragment) ^
      const DeepCollectionEquality().hash(rawPath) ^
      const DeepCollectionEquality().hash(rawQuery) ^
      const DeepCollectionEquality().hash(rawSchemeSpecificPart) ^
      const DeepCollectionEquality().hash(rawUserInfo) ^
      const DeepCollectionEquality().hash(scheme) ^
      const DeepCollectionEquality().hash(schemeSpecificPart) ^
      const DeepCollectionEquality().hash(userInfo) ^
      runtimeType.hashCode;
}

extension $UriExtension on Uri {
  Uri copyWith(
      {bool? absolute,
      String? authority,
      String? fragment,
      String? host,
      bool? opaque,
      String? path,
      int? port,
      String? query,
      String? rawAuthority,
      String? rawFragment,
      String? rawPath,
      String? rawQuery,
      String? rawSchemeSpecificPart,
      String? rawUserInfo,
      String? scheme,
      String? schemeSpecificPart,
      String? userInfo}) {
    return Uri(
        absolute: absolute ?? this.absolute,
        authority: authority ?? this.authority,
        fragment: fragment ?? this.fragment,
        host: host ?? this.host,
        opaque: opaque ?? this.opaque,
        path: path ?? this.path,
        port: port ?? this.port,
        query: query ?? this.query,
        rawAuthority: rawAuthority ?? this.rawAuthority,
        rawFragment: rawFragment ?? this.rawFragment,
        rawPath: rawPath ?? this.rawPath,
        rawQuery: rawQuery ?? this.rawQuery,
        rawSchemeSpecificPart:
            rawSchemeSpecificPart ?? this.rawSchemeSpecificPart,
        rawUserInfo: rawUserInfo ?? this.rawUserInfo,
        scheme: scheme ?? this.scheme,
        schemeSpecificPart: schemeSpecificPart ?? this.schemeSpecificPart,
        userInfo: userInfo ?? this.userInfo);
  }

  Uri copyWithWrapped(
      {Wrapped<bool?>? absolute,
      Wrapped<String?>? authority,
      Wrapped<String?>? fragment,
      Wrapped<String?>? host,
      Wrapped<bool?>? opaque,
      Wrapped<String?>? path,
      Wrapped<int?>? port,
      Wrapped<String?>? query,
      Wrapped<String?>? rawAuthority,
      Wrapped<String?>? rawFragment,
      Wrapped<String?>? rawPath,
      Wrapped<String?>? rawQuery,
      Wrapped<String?>? rawSchemeSpecificPart,
      Wrapped<String?>? rawUserInfo,
      Wrapped<String?>? scheme,
      Wrapped<String?>? schemeSpecificPart,
      Wrapped<String?>? userInfo}) {
    return Uri(
        absolute: (absolute != null ? absolute.value : this.absolute),
        authority: (authority != null ? authority.value : this.authority),
        fragment: (fragment != null ? fragment.value : this.fragment),
        host: (host != null ? host.value : this.host),
        opaque: (opaque != null ? opaque.value : this.opaque),
        path: (path != null ? path.value : this.path),
        port: (port != null ? port.value : this.port),
        query: (query != null ? query.value : this.query),
        rawAuthority:
            (rawAuthority != null ? rawAuthority.value : this.rawAuthority),
        rawFragment:
            (rawFragment != null ? rawFragment.value : this.rawFragment),
        rawPath: (rawPath != null ? rawPath.value : this.rawPath),
        rawQuery: (rawQuery != null ? rawQuery.value : this.rawQuery),
        rawSchemeSpecificPart: (rawSchemeSpecificPart != null
            ? rawSchemeSpecificPart.value
            : this.rawSchemeSpecificPart),
        rawUserInfo:
            (rawUserInfo != null ? rawUserInfo.value : this.rawUserInfo),
        scheme: (scheme != null ? scheme.value : this.scheme),
        schemeSpecificPart: (schemeSpecificPart != null
            ? schemeSpecificPart.value
            : this.schemeSpecificPart),
        userInfo: (userInfo != null ? userInfo.value : this.userInfo));
  }
}

@JsonSerializable(explicitToJson: true)
class Url {
  Url({
    this.authority,
    this.content,
    this.defaultPort,
    this.file,
    this.host,
    this.path,
    this.port,
    this.protocol,
    this.query,
    this.ref,
    this.userInfo,
  });

  factory Url.fromJson(Map<String, dynamic> json) => _$UrlFromJson(json);

  @JsonKey(name: 'authority')
  final String? authority;
  @JsonKey(name: 'content')
  final Object? content;
  @JsonKey(name: 'defaultPort')
  final int? defaultPort;
  @JsonKey(name: 'file')
  final String? file;
  @JsonKey(name: 'host')
  final String? host;
  @JsonKey(name: 'path')
  final String? path;
  @JsonKey(name: 'port')
  final int? port;
  @JsonKey(name: 'protocol')
  final String? protocol;
  @JsonKey(name: 'query')
  final String? query;
  @JsonKey(name: 'ref')
  final String? ref;
  @JsonKey(name: 'userInfo')
  final String? userInfo;
  static const fromJsonFactory = _$UrlFromJson;
  static const toJsonFactory = _$UrlToJson;
  Map<String, dynamic> toJson() => _$UrlToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Url &&
            (identical(other.authority, authority) ||
                const DeepCollectionEquality()
                    .equals(other.authority, authority)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.defaultPort, defaultPort) ||
                const DeepCollectionEquality()
                    .equals(other.defaultPort, defaultPort)) &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)) &&
            (identical(other.host, host) ||
                const DeepCollectionEquality().equals(other.host, host)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.port, port) ||
                const DeepCollectionEquality().equals(other.port, port)) &&
            (identical(other.protocol, protocol) ||
                const DeepCollectionEquality()
                    .equals(other.protocol, protocol)) &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)) &&
            (identical(other.ref, ref) ||
                const DeepCollectionEquality().equals(other.ref, ref)) &&
            (identical(other.userInfo, userInfo) ||
                const DeepCollectionEquality()
                    .equals(other.userInfo, userInfo)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(authority) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(defaultPort) ^
      const DeepCollectionEquality().hash(file) ^
      const DeepCollectionEquality().hash(host) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(port) ^
      const DeepCollectionEquality().hash(protocol) ^
      const DeepCollectionEquality().hash(query) ^
      const DeepCollectionEquality().hash(ref) ^
      const DeepCollectionEquality().hash(userInfo) ^
      runtimeType.hashCode;
}

extension $UrlExtension on Url {
  Url copyWith(
      {String? authority,
      Object? content,
      int? defaultPort,
      String? file,
      String? host,
      String? path,
      int? port,
      String? protocol,
      String? query,
      String? ref,
      String? userInfo}) {
    return Url(
        authority: authority ?? this.authority,
        content: content ?? this.content,
        defaultPort: defaultPort ?? this.defaultPort,
        file: file ?? this.file,
        host: host ?? this.host,
        path: path ?? this.path,
        port: port ?? this.port,
        protocol: protocol ?? this.protocol,
        query: query ?? this.query,
        ref: ref ?? this.ref,
        userInfo: userInfo ?? this.userInfo);
  }

  Url copyWithWrapped(
      {Wrapped<String?>? authority,
      Wrapped<Object?>? content,
      Wrapped<int?>? defaultPort,
      Wrapped<String?>? file,
      Wrapped<String?>? host,
      Wrapped<String?>? path,
      Wrapped<int?>? port,
      Wrapped<String?>? protocol,
      Wrapped<String?>? query,
      Wrapped<String?>? ref,
      Wrapped<String?>? userInfo}) {
    return Url(
        authority: (authority != null ? authority.value : this.authority),
        content: (content != null ? content.value : this.content),
        defaultPort:
            (defaultPort != null ? defaultPort.value : this.defaultPort),
        file: (file != null ? file.value : this.file),
        host: (host != null ? host.value : this.host),
        path: (path != null ? path.value : this.path),
        port: (port != null ? port.value : this.port),
        protocol: (protocol != null ? protocol.value : this.protocol),
        query: (query != null ? query.value : this.query),
        ref: (ref != null ? ref.value : this.ref),
        userInfo: (userInfo != null ? userInfo.value : this.userInfo));
  }
}

@JsonSerializable(explicitToJson: true)
class YourOneDTO {
  YourOneDTO({
    this.alcohol,
    this.bio,
    this.breastSize,
    this.childrenNumber,
    this.cigarettes,
    this.city,
    this.eduLevel,
    this.eyeColour,
    this.facialHair,
    this.filmTaste,
    this.gender,
    this.glasses,
    this.hairColour,
    this.height,
    this.horoscope,
    this.interests,
    this.jobType,
    this.languages,
    this.maritalStatus,
    this.musicalTaste,
    this.piercing,
    this.religion,
    this.shape,
    this.sportiness,
    this.tattoo,
  });

  factory YourOneDTO.fromJson(Map<String, dynamic> json) =>
      _$YourOneDTOFromJson(json);

  @JsonKey(name: 'alcohol')
  final int? alcohol;
  @JsonKey(name: 'bio')
  final String? bio;
  @JsonKey(name: 'breastSize')
  final int? breastSize;
  @JsonKey(name: 'childrenNumber')
  final int? childrenNumber;
  @JsonKey(name: 'cigarettes')
  final int? cigarettes;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'eduLevel')
  final int? eduLevel;
  @JsonKey(name: 'eyeColour')
  final int? eyeColour;
  @JsonKey(name: 'facialHair')
  final int? facialHair;
  @JsonKey(name: 'filmTaste', defaultValue: <int>[])
  final List<int>? filmTaste;
  @JsonKey(name: 'gender')
  final int? gender;
  @JsonKey(name: 'glasses')
  final int? glasses;
  @JsonKey(name: 'hairColour')
  final int? hairColour;
  @JsonKey(name: 'height')
  final int? height;
  @JsonKey(name: 'horoscope')
  final int? horoscope;
  @JsonKey(name: 'interests', defaultValue: <int>[])
  final List<int>? interests;
  @JsonKey(name: 'jobType')
  final int? jobType;
  @JsonKey(name: 'languages', defaultValue: <int>[])
  final List<int>? languages;
  @JsonKey(name: 'maritalStatus')
  final int? maritalStatus;
  @JsonKey(name: 'musicalTaste', defaultValue: <int>[])
  final List<int>? musicalTaste;
  @JsonKey(name: 'piercing')
  final int? piercing;
  @JsonKey(name: 'religion')
  final int? religion;
  @JsonKey(name: 'shape')
  final int? shape;
  @JsonKey(name: 'sportiness')
  final int? sportiness;
  @JsonKey(name: 'tattoo')
  final int? tattoo;
  static const fromJsonFactory = _$YourOneDTOFromJson;
  static const toJsonFactory = _$YourOneDTOToJson;
  Map<String, dynamic> toJson() => _$YourOneDTOToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is YourOneDTO &&
            (identical(other.alcohol, alcohol) ||
                const DeepCollectionEquality()
                    .equals(other.alcohol, alcohol)) &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)) &&
            (identical(other.breastSize, breastSize) ||
                const DeepCollectionEquality()
                    .equals(other.breastSize, breastSize)) &&
            (identical(other.childrenNumber, childrenNumber) ||
                const DeepCollectionEquality()
                    .equals(other.childrenNumber, childrenNumber)) &&
            (identical(other.cigarettes, cigarettes) ||
                const DeepCollectionEquality()
                    .equals(other.cigarettes, cigarettes)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.eduLevel, eduLevel) ||
                const DeepCollectionEquality()
                    .equals(other.eduLevel, eduLevel)) &&
            (identical(other.eyeColour, eyeColour) ||
                const DeepCollectionEquality()
                    .equals(other.eyeColour, eyeColour)) &&
            (identical(other.facialHair, facialHair) ||
                const DeepCollectionEquality()
                    .equals(other.facialHair, facialHair)) &&
            (identical(other.filmTaste, filmTaste) ||
                const DeepCollectionEquality()
                    .equals(other.filmTaste, filmTaste)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.glasses, glasses) ||
                const DeepCollectionEquality()
                    .equals(other.glasses, glasses)) &&
            (identical(other.hairColour, hairColour) ||
                const DeepCollectionEquality()
                    .equals(other.hairColour, hairColour)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.horoscope, horoscope) ||
                const DeepCollectionEquality()
                    .equals(other.horoscope, horoscope)) &&
            (identical(other.interests, interests) ||
                const DeepCollectionEquality()
                    .equals(other.interests, interests)) &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.languages, languages) ||
                const DeepCollectionEquality()
                    .equals(other.languages, languages)) &&
            (identical(other.maritalStatus, maritalStatus) ||
                const DeepCollectionEquality()
                    .equals(other.maritalStatus, maritalStatus)) &&
            (identical(other.musicalTaste, musicalTaste) ||
                const DeepCollectionEquality()
                    .equals(other.musicalTaste, musicalTaste)) &&
            (identical(other.piercing, piercing) ||
                const DeepCollectionEquality()
                    .equals(other.piercing, piercing)) &&
            (identical(other.religion, religion) ||
                const DeepCollectionEquality()
                    .equals(other.religion, religion)) &&
            (identical(other.shape, shape) ||
                const DeepCollectionEquality().equals(other.shape, shape)) &&
            (identical(other.sportiness, sportiness) ||
                const DeepCollectionEquality()
                    .equals(other.sportiness, sportiness)) &&
            (identical(other.tattoo, tattoo) || const DeepCollectionEquality().equals(other.tattoo, tattoo)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(alcohol) ^
      const DeepCollectionEquality().hash(bio) ^
      const DeepCollectionEquality().hash(breastSize) ^
      const DeepCollectionEquality().hash(childrenNumber) ^
      const DeepCollectionEquality().hash(cigarettes) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(eduLevel) ^
      const DeepCollectionEquality().hash(eyeColour) ^
      const DeepCollectionEquality().hash(facialHair) ^
      const DeepCollectionEquality().hash(filmTaste) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(glasses) ^
      const DeepCollectionEquality().hash(hairColour) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(horoscope) ^
      const DeepCollectionEquality().hash(interests) ^
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(languages) ^
      const DeepCollectionEquality().hash(maritalStatus) ^
      const DeepCollectionEquality().hash(musicalTaste) ^
      const DeepCollectionEquality().hash(piercing) ^
      const DeepCollectionEquality().hash(religion) ^
      const DeepCollectionEquality().hash(shape) ^
      const DeepCollectionEquality().hash(sportiness) ^
      const DeepCollectionEquality().hash(tattoo) ^
      runtimeType.hashCode;
}

extension $YourOneDTOExtension on YourOneDTO {
  YourOneDTO copyWith(
      {int? alcohol,
      String? bio,
      int? breastSize,
      int? childrenNumber,
      int? cigarettes,
      String? city,
      int? eduLevel,
      int? eyeColour,
      int? facialHair,
      List<int>? filmTaste,
      int? gender,
      int? glasses,
      int? hairColour,
      int? height,
      int? horoscope,
      List<int>? interests,
      int? jobType,
      List<int>? languages,
      int? maritalStatus,
      List<int>? musicalTaste,
      int? piercing,
      int? religion,
      int? shape,
      int? sportiness,
      int? tattoo}) {
    return YourOneDTO(
        alcohol: alcohol ?? this.alcohol,
        bio: bio ?? this.bio,
        breastSize: breastSize ?? this.breastSize,
        childrenNumber: childrenNumber ?? this.childrenNumber,
        cigarettes: cigarettes ?? this.cigarettes,
        city: city ?? this.city,
        eduLevel: eduLevel ?? this.eduLevel,
        eyeColour: eyeColour ?? this.eyeColour,
        facialHair: facialHair ?? this.facialHair,
        filmTaste: filmTaste ?? this.filmTaste,
        gender: gender ?? this.gender,
        glasses: glasses ?? this.glasses,
        hairColour: hairColour ?? this.hairColour,
        height: height ?? this.height,
        horoscope: horoscope ?? this.horoscope,
        interests: interests ?? this.interests,
        jobType: jobType ?? this.jobType,
        languages: languages ?? this.languages,
        maritalStatus: maritalStatus ?? this.maritalStatus,
        musicalTaste: musicalTaste ?? this.musicalTaste,
        piercing: piercing ?? this.piercing,
        religion: religion ?? this.religion,
        shape: shape ?? this.shape,
        sportiness: sportiness ?? this.sportiness,
        tattoo: tattoo ?? this.tattoo);
  }

  YourOneDTO copyWithWrapped(
      {Wrapped<int?>? alcohol,
      Wrapped<String?>? bio,
      Wrapped<int?>? breastSize,
      Wrapped<int?>? childrenNumber,
      Wrapped<int?>? cigarettes,
      Wrapped<String?>? city,
      Wrapped<int?>? eduLevel,
      Wrapped<int?>? eyeColour,
      Wrapped<int?>? facialHair,
      Wrapped<List<int>?>? filmTaste,
      Wrapped<int?>? gender,
      Wrapped<int?>? glasses,
      Wrapped<int?>? hairColour,
      Wrapped<int?>? height,
      Wrapped<int?>? horoscope,
      Wrapped<List<int>?>? interests,
      Wrapped<int?>? jobType,
      Wrapped<List<int>?>? languages,
      Wrapped<int?>? maritalStatus,
      Wrapped<List<int>?>? musicalTaste,
      Wrapped<int?>? piercing,
      Wrapped<int?>? religion,
      Wrapped<int?>? shape,
      Wrapped<int?>? sportiness,
      Wrapped<int?>? tattoo}) {
    return YourOneDTO(
        alcohol: (alcohol != null ? alcohol.value : this.alcohol),
        bio: (bio != null ? bio.value : this.bio),
        breastSize: (breastSize != null ? breastSize.value : this.breastSize),
        childrenNumber: (childrenNumber != null
            ? childrenNumber.value
            : this.childrenNumber),
        cigarettes: (cigarettes != null ? cigarettes.value : this.cigarettes),
        city: (city != null ? city.value : this.city),
        eduLevel: (eduLevel != null ? eduLevel.value : this.eduLevel),
        eyeColour: (eyeColour != null ? eyeColour.value : this.eyeColour),
        facialHair: (facialHair != null ? facialHair.value : this.facialHair),
        filmTaste: (filmTaste != null ? filmTaste.value : this.filmTaste),
        gender: (gender != null ? gender.value : this.gender),
        glasses: (glasses != null ? glasses.value : this.glasses),
        hairColour: (hairColour != null ? hairColour.value : this.hairColour),
        height: (height != null ? height.value : this.height),
        horoscope: (horoscope != null ? horoscope.value : this.horoscope),
        interests: (interests != null ? interests.value : this.interests),
        jobType: (jobType != null ? jobType.value : this.jobType),
        languages: (languages != null ? languages.value : this.languages),
        maritalStatus:
            (maritalStatus != null ? maritalStatus.value : this.maritalStatus),
        musicalTaste:
            (musicalTaste != null ? musicalTaste.value : this.musicalTaste),
        piercing: (piercing != null ? piercing.value : this.piercing),
        religion: (religion != null ? religion.value : this.religion),
        shape: (shape != null ? shape.value : this.shape),
        sportiness: (sportiness != null ? sportiness.value : this.sportiness),
        tattoo: (tattoo != null ? tattoo.value : this.tattoo));
  }
}

@JsonSerializable(explicitToJson: true)
class YourOneEntity {
  YourOneEntity({
    this.filmTaste,
    this.interests,
    this.languages,
    this.musicalTaste,
    this.alcohol,
    this.breastSize,
    this.childrenNumber,
    this.cigarettes,
    this.eduLevel,
    this.eyeColour,
    this.facialHair,
    required this.$filmTaste,
    this.gender,
    this.glasses,
    this.hairColour,
    this.height,
    this.horoscope,
    required this.id,
    required this.$interests,
    this.jobType,
    required this.$languages,
    this.maritalStatus,
    required this.$musicalTaste,
    this.piercing,
    this.religion,
    this.shape,
    this.sportiness,
    this.tattoo,
  });

  factory YourOneEntity.fromJson(Map<String, dynamic> json) =>
      _$YourOneEntityFromJson(json);

  @JsonKey(name: '_filmTaste')
  final String? filmTaste;
  @JsonKey(name: '_interests')
  final String? interests;
  @JsonKey(name: '_languages')
  final String? languages;
  @JsonKey(name: '_musicalTaste')
  final String? musicalTaste;
  @JsonKey(name: 'alcohol')
  final int? alcohol;
  @JsonKey(name: 'breastSize')
  final int? breastSize;
  @JsonKey(name: 'childrenNumber')
  final int? childrenNumber;
  @JsonKey(name: 'cigarettes')
  final int? cigarettes;
  @JsonKey(name: 'eduLevel')
  final int? eduLevel;
  @JsonKey(name: 'eyeColour')
  final int? eyeColour;
  @JsonKey(name: 'facialHair')
  final int? facialHair;
  @JsonKey(name: 'filmTaste', defaultValue: <int>[])
  final List<int> $filmTaste;
  @JsonKey(name: 'gender')
  final int? gender;
  @JsonKey(name: 'glasses')
  final int? glasses;
  @JsonKey(name: 'hairColour')
  final int? hairColour;
  @JsonKey(name: 'height')
  final int? height;
  @JsonKey(name: 'horoscope')
  final int? horoscope;
  @JsonKey(name: 'id')
  final num id;
  @JsonKey(name: 'interests', defaultValue: <int>[])
  final List<int> $interests;
  @JsonKey(name: 'jobType')
  final int? jobType;
  @JsonKey(name: 'languages', defaultValue: <int>[])
  final List<int> $languages;
  @JsonKey(name: 'maritalStatus')
  final int? maritalStatus;
  @JsonKey(name: 'musicalTaste', defaultValue: <int>[])
  final List<int> $musicalTaste;
  @JsonKey(name: 'piercing')
  final int? piercing;
  @JsonKey(name: 'religion')
  final int? religion;
  @JsonKey(name: 'shape')
  final int? shape;
  @JsonKey(name: 'sportiness')
  final int? sportiness;
  @JsonKey(name: 'tattoo')
  final int? tattoo;
  static const fromJsonFactory = _$YourOneEntityFromJson;
  static const toJsonFactory = _$YourOneEntityToJson;
  Map<String, dynamic> toJson() => _$YourOneEntityToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is YourOneEntity &&
            (identical(other.filmTaste, filmTaste) ||
                const DeepCollectionEquality()
                    .equals(other.filmTaste, filmTaste)) &&
            (identical(other.interests, interests) ||
                const DeepCollectionEquality()
                    .equals(other.interests, interests)) &&
            (identical(other.languages, languages) ||
                const DeepCollectionEquality()
                    .equals(other.languages, languages)) &&
            (identical(other.musicalTaste, musicalTaste) ||
                const DeepCollectionEquality()
                    .equals(other.musicalTaste, musicalTaste)) &&
            (identical(other.alcohol, alcohol) ||
                const DeepCollectionEquality()
                    .equals(other.alcohol, alcohol)) &&
            (identical(other.breastSize, breastSize) ||
                const DeepCollectionEquality()
                    .equals(other.breastSize, breastSize)) &&
            (identical(other.childrenNumber, childrenNumber) ||
                const DeepCollectionEquality()
                    .equals(other.childrenNumber, childrenNumber)) &&
            (identical(other.cigarettes, cigarettes) ||
                const DeepCollectionEquality()
                    .equals(other.cigarettes, cigarettes)) &&
            (identical(other.eduLevel, eduLevel) ||
                const DeepCollectionEquality()
                    .equals(other.eduLevel, eduLevel)) &&
            (identical(other.eyeColour, eyeColour) ||
                const DeepCollectionEquality()
                    .equals(other.eyeColour, eyeColour)) &&
            (identical(other.facialHair, facialHair) ||
                const DeepCollectionEquality()
                    .equals(other.facialHair, facialHair)) &&
            (identical(other.$filmTaste, $filmTaste) ||
                const DeepCollectionEquality()
                    .equals(other.$filmTaste, $filmTaste)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.glasses, glasses) ||
                const DeepCollectionEquality()
                    .equals(other.glasses, glasses)) &&
            (identical(other.hairColour, hairColour) ||
                const DeepCollectionEquality()
                    .equals(other.hairColour, hairColour)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.horoscope, horoscope) ||
                const DeepCollectionEquality()
                    .equals(other.horoscope, horoscope)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$interests, $interests) ||
                const DeepCollectionEquality()
                    .equals(other.$interests, $interests)) &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.$languages, $languages) ||
                const DeepCollectionEquality()
                    .equals(other.$languages, $languages)) &&
            (identical(other.maritalStatus, maritalStatus) ||
                const DeepCollectionEquality()
                    .equals(other.maritalStatus, maritalStatus)) &&
            (identical(other.$musicalTaste, $musicalTaste) ||
                const DeepCollectionEquality()
                    .equals(other.$musicalTaste, $musicalTaste)) &&
            (identical(other.piercing, piercing) || const DeepCollectionEquality().equals(other.piercing, piercing)) &&
            (identical(other.religion, religion) || const DeepCollectionEquality().equals(other.religion, religion)) &&
            (identical(other.shape, shape) || const DeepCollectionEquality().equals(other.shape, shape)) &&
            (identical(other.sportiness, sportiness) || const DeepCollectionEquality().equals(other.sportiness, sportiness)) &&
            (identical(other.tattoo, tattoo) || const DeepCollectionEquality().equals(other.tattoo, tattoo)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(filmTaste) ^
      const DeepCollectionEquality().hash(interests) ^
      const DeepCollectionEquality().hash(languages) ^
      const DeepCollectionEquality().hash(musicalTaste) ^
      const DeepCollectionEquality().hash(alcohol) ^
      const DeepCollectionEquality().hash(breastSize) ^
      const DeepCollectionEquality().hash(childrenNumber) ^
      const DeepCollectionEquality().hash(cigarettes) ^
      const DeepCollectionEquality().hash(eduLevel) ^
      const DeepCollectionEquality().hash(eyeColour) ^
      const DeepCollectionEquality().hash(facialHair) ^
      const DeepCollectionEquality().hash($filmTaste) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(glasses) ^
      const DeepCollectionEquality().hash(hairColour) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(horoscope) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($interests) ^
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash($languages) ^
      const DeepCollectionEquality().hash(maritalStatus) ^
      const DeepCollectionEquality().hash($musicalTaste) ^
      const DeepCollectionEquality().hash(piercing) ^
      const DeepCollectionEquality().hash(religion) ^
      const DeepCollectionEquality().hash(shape) ^
      const DeepCollectionEquality().hash(sportiness) ^
      const DeepCollectionEquality().hash(tattoo) ^
      runtimeType.hashCode;
}

extension $YourOneEntityExtension on YourOneEntity {
  YourOneEntity copyWith(
      {String? filmTaste,
      String? interests,
      String? languages,
      String? musicalTaste,
      int? alcohol,
      int? breastSize,
      int? childrenNumber,
      int? cigarettes,
      int? eduLevel,
      int? eyeColour,
      int? facialHair,
      List<int>? $filmTaste,
      int? gender,
      int? glasses,
      int? hairColour,
      int? height,
      int? horoscope,
      num? id,
      List<int>? $interests,
      int? jobType,
      List<int>? $languages,
      int? maritalStatus,
      List<int>? $musicalTaste,
      int? piercing,
      int? religion,
      int? shape,
      int? sportiness,
      int? tattoo}) {
    return YourOneEntity(
        filmTaste: filmTaste ?? this.filmTaste,
        interests: interests ?? this.interests,
        languages: languages ?? this.languages,
        musicalTaste: musicalTaste ?? this.musicalTaste,
        alcohol: alcohol ?? this.alcohol,
        breastSize: breastSize ?? this.breastSize,
        childrenNumber: childrenNumber ?? this.childrenNumber,
        cigarettes: cigarettes ?? this.cigarettes,
        eduLevel: eduLevel ?? this.eduLevel,
        eyeColour: eyeColour ?? this.eyeColour,
        facialHair: facialHair ?? this.facialHair,
        $filmTaste: $filmTaste ?? this.$filmTaste,
        gender: gender ?? this.gender,
        glasses: glasses ?? this.glasses,
        hairColour: hairColour ?? this.hairColour,
        height: height ?? this.height,
        horoscope: horoscope ?? this.horoscope,
        id: id ?? this.id,
        $interests: $interests ?? this.$interests,
        jobType: jobType ?? this.jobType,
        $languages: $languages ?? this.$languages,
        maritalStatus: maritalStatus ?? this.maritalStatus,
        $musicalTaste: $musicalTaste ?? this.$musicalTaste,
        piercing: piercing ?? this.piercing,
        religion: religion ?? this.religion,
        shape: shape ?? this.shape,
        sportiness: sportiness ?? this.sportiness,
        tattoo: tattoo ?? this.tattoo);
  }

  YourOneEntity copyWithWrapped(
      {Wrapped<String?>? filmTaste,
      Wrapped<String?>? interests,
      Wrapped<String?>? languages,
      Wrapped<String?>? musicalTaste,
      Wrapped<int?>? alcohol,
      Wrapped<int?>? breastSize,
      Wrapped<int?>? childrenNumber,
      Wrapped<int?>? cigarettes,
      Wrapped<int?>? eduLevel,
      Wrapped<int?>? eyeColour,
      Wrapped<int?>? facialHair,
      Wrapped<List<int>>? $filmTaste,
      Wrapped<int?>? gender,
      Wrapped<int?>? glasses,
      Wrapped<int?>? hairColour,
      Wrapped<int?>? height,
      Wrapped<int?>? horoscope,
      Wrapped<num>? id,
      Wrapped<List<int>>? $interests,
      Wrapped<int?>? jobType,
      Wrapped<List<int>>? $languages,
      Wrapped<int?>? maritalStatus,
      Wrapped<List<int>>? $musicalTaste,
      Wrapped<int?>? piercing,
      Wrapped<int?>? religion,
      Wrapped<int?>? shape,
      Wrapped<int?>? sportiness,
      Wrapped<int?>? tattoo}) {
    return YourOneEntity(
        filmTaste: (filmTaste != null ? filmTaste.value : this.filmTaste),
        interests: (interests != null ? interests.value : this.interests),
        languages: (languages != null ? languages.value : this.languages),
        musicalTaste:
            (musicalTaste != null ? musicalTaste.value : this.musicalTaste),
        alcohol: (alcohol != null ? alcohol.value : this.alcohol),
        breastSize: (breastSize != null ? breastSize.value : this.breastSize),
        childrenNumber: (childrenNumber != null
            ? childrenNumber.value
            : this.childrenNumber),
        cigarettes: (cigarettes != null ? cigarettes.value : this.cigarettes),
        eduLevel: (eduLevel != null ? eduLevel.value : this.eduLevel),
        eyeColour: (eyeColour != null ? eyeColour.value : this.eyeColour),
        facialHair: (facialHair != null ? facialHair.value : this.facialHair),
        $filmTaste: ($filmTaste != null ? $filmTaste.value : this.$filmTaste),
        gender: (gender != null ? gender.value : this.gender),
        glasses: (glasses != null ? glasses.value : this.glasses),
        hairColour: (hairColour != null ? hairColour.value : this.hairColour),
        height: (height != null ? height.value : this.height),
        horoscope: (horoscope != null ? horoscope.value : this.horoscope),
        id: (id != null ? id.value : this.id),
        $interests: ($interests != null ? $interests.value : this.$interests),
        jobType: (jobType != null ? jobType.value : this.jobType),
        $languages: ($languages != null ? $languages.value : this.$languages),
        maritalStatus:
            (maritalStatus != null ? maritalStatus.value : this.maritalStatus),
        $musicalTaste:
            ($musicalTaste != null ? $musicalTaste.value : this.$musicalTaste),
        piercing: (piercing != null ? piercing.value : this.piercing),
        religion: (religion != null ? religion.value : this.religion),
        shape: (shape != null ? shape.value : this.shape),
        sportiness: (sportiness != null ? sportiness.value : this.sportiness),
        tattoo: (tattoo != null ? tattoo.value : this.tattoo));
  }
}

String? messageEntityStateToJson(enums.MessageEntityState? messageEntityState) {
  return enums.$MessageEntityStateMap[messageEntityState];
}

enums.MessageEntityState messageEntityStateFromJson(
  Object? messageEntityState, [
  enums.MessageEntityState? defaultValue,
]) {
  if (messageEntityState is String) {
    return enums.$MessageEntityStateMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() == messageEntityState.toLowerCase(),
            orElse: () => const MapEntry(
                enums.MessageEntityState.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$MessageEntityStateMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.MessageEntityState.swaggerGeneratedUnknown;
}

List<String> messageEntityStateListToJson(
    List<enums.MessageEntityState>? messageEntityState) {
  if (messageEntityState == null) {
    return [];
  }

  return messageEntityState
      .map((e) => enums.$MessageEntityStateMap[e]!)
      .toList();
}

List<enums.MessageEntityState> messageEntityStateListFromJson(
  List? messageEntityState, [
  List<enums.MessageEntityState>? defaultValue,
]) {
  if (messageEntityState == null) {
    return defaultValue ?? [];
  }

  return messageEntityState
      .map((e) => messageEntityStateFromJson(e.toString()))
      .toList();
}

List<enums.MessageEntityState>? messageEntityStateNullableListFromJson(
  List? messageEntityState, [
  List<enums.MessageEntityState>? defaultValue,
]) {
  if (messageEntityState == null) {
    return defaultValue;
  }

  return messageEntityState
      .map((e) => messageEntityStateFromJson(e.toString()))
      .toList();
}

String? pairEntityStateToJson(enums.PairEntityState? pairEntityState) {
  return enums.$PairEntityStateMap[pairEntityState];
}

enums.PairEntityState pairEntityStateFromJson(
  Object? pairEntityState, [
  enums.PairEntityState? defaultValue,
]) {
  if (pairEntityState is String) {
    return enums.$PairEntityStateMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() == pairEntityState.toLowerCase(),
            orElse: () => const MapEntry(
                enums.PairEntityState.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$PairEntityStateMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.PairEntityState.swaggerGeneratedUnknown;
}

List<String> pairEntityStateListToJson(
    List<enums.PairEntityState>? pairEntityState) {
  if (pairEntityState == null) {
    return [];
  }

  return pairEntityState.map((e) => enums.$PairEntityStateMap[e]!).toList();
}

List<enums.PairEntityState> pairEntityStateListFromJson(
  List? pairEntityState, [
  List<enums.PairEntityState>? defaultValue,
]) {
  if (pairEntityState == null) {
    return defaultValue ?? [];
  }

  return pairEntityState
      .map((e) => pairEntityStateFromJson(e.toString()))
      .toList();
}

List<enums.PairEntityState>? pairEntityStateNullableListFromJson(
  List? pairEntityState, [
  List<enums.PairEntityState>? defaultValue,
]) {
  if (pairEntityState == null) {
    return defaultValue;
  }

  return pairEntityState
      .map((e) => pairEntityStateFromJson(e.toString()))
      .toList();
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
