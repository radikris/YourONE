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
  Future<chopper.Response<List<Person>>> apiChatGet({String? authorization}) {
    generatedMapping.putIfAbsent(Person, () => Person.fromJsonFactory);

    return _apiChatGet(authorization: authorization);
  }

  ///findAllChats
  ///@param Authorization Authorization
  @Get(path: '/api/chat')
  Future<chopper.Response<List<Person>>> _apiChatGet(
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

  ///test
  ///@param dto dto
  Future<chopper.Response<ChatNotification>> apiChatPostTestPost(
      {required SendMessageDTO? dto}) {
    generatedMapping.putIfAbsent(
        SendMessageDTO, () => SendMessageDTO.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ChatNotification, () => ChatNotification.fromJsonFactory);

    return _apiChatPostTestPost(dto: dto);
  }

  ///test
  ///@param dto dto
  @Post(path: '/api/chat/post-test')
  Future<chopper.Response<ChatNotification>> _apiChatPostTestPost(
      {@Body() required SendMessageDTO? dto});

  ///findChatMessages
  ///@param Authorization Authorization
  ///@param addresseeId addresseeId
  Future<chopper.Response<List<MessageEntity>>> apiChatAddresseeIdGet({
    String? authorization,
    required int? addresseeId,
  }) {
    generatedMapping.putIfAbsent(
        MessageEntity, () => MessageEntity.fromJsonFactory);

    return _apiChatAddresseeIdGet(
        authorization: authorization, addresseeId: addresseeId);
  }

  ///findChatMessages
  ///@param Authorization Authorization
  ///@param addresseeId addresseeId
  @Get(path: '/api/chat/{addresseeId}')
  Future<chopper.Response<List<MessageEntity>>> _apiChatAddresseeIdGet({
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

  ///noMatch
  ///@param Authorization Authorization
  ///@param partnerId partnerId
  Future<chopper.Response<bool>> apiPersonPartnerMatchNoPost({
    String? authorization,
    required num? partnerId,
  }) {
    return _apiPersonPartnerMatchNoPost(
        authorization: authorization, partnerId: partnerId);
  }

  ///noMatch
  ///@param Authorization Authorization
  ///@param partnerId partnerId
  @Post(path: '/api/person/partner-match/no')
  Future<chopper.Response<bool>> _apiPersonPartnerMatchNoPost({
    @Header('Authorization') String? authorization,
    @Body() required num? partnerId,
  });

  ///yesMatch
  ///@param Authorization Authorization
  ///@param partnerId partnerId
  Future<chopper.Response<bool>> apiPersonPartnerMatchYesPost({
    String? authorization,
    required num? partnerId,
  }) {
    return _apiPersonPartnerMatchYesPost(
        authorization: authorization, partnerId: partnerId);
  }

  ///yesMatch
  ///@param Authorization Authorization
  ///@param partnerId partnerId
  @Post(path: '/api/person/partner-match/yes')
  Future<chopper.Response<bool>> _apiPersonPartnerMatchYesPost({
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

  ///Modifying user data
  ///@param id id
  ///@param newData newData
  Future<chopper.Response<PersonAllDTO>> apiPersonIdPut({
    required int? id,
    required PersonAllDTO? newData,
  }) {
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
    @Body() required PersonAllDTO? newData,
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
    required this.name,
    required this.matches,
  });

  factory CommonAttributes.fromJson(Map<String, dynamic> json) =>
      _$CommonAttributesFromJson(json);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'matches')
  final Map<String, dynamic> matches;
  static const fromJsonFactory = _$CommonAttributesFromJson;
  static const toJsonFactory = _$CommonAttributesToJson;
  Map<String, dynamic> toJson() => _$CommonAttributesToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommonAttributes &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.matches, matches) ||
                const DeepCollectionEquality().equals(other.matches, matches)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(matches) ^
      runtimeType.hashCode;
}

extension $CommonAttributesExtension on CommonAttributes {
  CommonAttributes copyWith({String? name, Map<String, dynamic>? matches}) {
    return CommonAttributes(
        name: name ?? this.name, matches: matches ?? this.matches);
  }

  CommonAttributes copyWithWrapped(
      {Wrapped<String>? name, Wrapped<Map<String, dynamic>>? matches}) {
    return CommonAttributes(
        name: (name != null ? name.value : this.name),
        matches: (matches != null ? matches.value : this.matches));
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
    this.pct,
    required this.commonAttributes,
  });

  factory Match.fromJson(Map<String, dynamic> json) => _$MatchFromJson(json);

  @JsonKey(name: 'pct')
  final int? pct;
  @JsonKey(name: 'commonAttributes', defaultValue: <CommonAttributes>[])
  final List<CommonAttributes> commonAttributes;
  static const fromJsonFactory = _$MatchFromJson;
  static const toJsonFactory = _$MatchToJson;
  Map<String, dynamic> toJson() => _$MatchToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Match &&
            (identical(other.pct, pct) ||
                const DeepCollectionEquality().equals(other.pct, pct)) &&
            (identical(other.commonAttributes, commonAttributes) ||
                const DeepCollectionEquality()
                    .equals(other.commonAttributes, commonAttributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pct) ^
      const DeepCollectionEquality().hash(commonAttributes) ^
      runtimeType.hashCode;
}

extension $MatchExtension on Match {
  Match copyWith({int? pct, List<CommonAttributes>? commonAttributes}) {
    return Match(
        pct: pct ?? this.pct,
        commonAttributes: commonAttributes ?? this.commonAttributes);
  }

  Match copyWithWrapped(
      {Wrapped<int?>? pct, Wrapped<List<CommonAttributes>>? commonAttributes}) {
    return Match(
        pct: (pct != null ? pct.value : this.pct),
        commonAttributes: (commonAttributes != null
            ? commonAttributes.value
            : this.commonAttributes));
  }
}

@JsonSerializable(explicitToJson: true)
class MessageEntity {
  MessageEntity({
    required this.addressee,
    this.id,
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
  final num? id;
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
      Wrapped<num?>? id,
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
    this.photo,
    this.piercing,
    this.religion,
    this.shape,
    this.sportiness,
    this.tattoo,
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
  @JsonKey(name: 'photo')
  final String? photo;
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
            (identical(other.photo, photo) || const DeepCollectionEquality().equals(other.photo, photo)) &&
            (identical(other.piercing, piercing) || const DeepCollectionEquality().equals(other.piercing, piercing)) &&
            (identical(other.religion, religion) || const DeepCollectionEquality().equals(other.religion, religion)) &&
            (identical(other.shape, shape) || const DeepCollectionEquality().equals(other.shape, shape)) &&
            (identical(other.sportiness, sportiness) || const DeepCollectionEquality().equals(other.sportiness, sportiness)) &&
            (identical(other.tattoo, tattoo) || const DeepCollectionEquality().equals(other.tattoo, tattoo)) &&
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
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(piercing) ^
      const DeepCollectionEquality().hash(religion) ^
      const DeepCollectionEquality().hash(shape) ^
      const DeepCollectionEquality().hash(sportiness) ^
      const DeepCollectionEquality().hash(tattoo) ^
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
      String? photo,
      int? piercing,
      int? religion,
      int? shape,
      int? sportiness,
      int? tattoo,
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
        photo: photo ?? this.photo,
        piercing: piercing ?? this.piercing,
        religion: religion ?? this.religion,
        shape: shape ?? this.shape,
        sportiness: sportiness ?? this.sportiness,
        tattoo: tattoo ?? this.tattoo,
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
      Wrapped<String?>? photo,
      Wrapped<int?>? piercing,
      Wrapped<int?>? religion,
      Wrapped<int?>? shape,
      Wrapped<int?>? sportiness,
      Wrapped<int?>? tattoo,
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
        photo: (photo != null ? photo.value : this.photo),
        piercing: (piercing != null ? piercing.value : this.piercing),
        religion: (religion != null ? religion.value : this.religion),
        shape: (shape != null ? shape.value : this.shape),
        sportiness: (sportiness != null ? sportiness.value : this.sportiness),
        tattoo: (tattoo != null ? tattoo.value : this.tattoo),
        username: (username != null ? username.value : this.username));
  }
}

@JsonSerializable(explicitToJson: true)
class PersonAllDTO {
  PersonAllDTO({
    this.id,
    this.username,
    required this.name,
    required this.email,
    required this.photo,
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
  });

  factory PersonAllDTO.fromJson(Map<String, dynamic> json) =>
      _$PersonAllDTOFromJson(json);

  @JsonKey(name: 'id')
  final num? id;
  @JsonKey(name: 'username')
  final String? username;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'photo')
  final String photo;
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
  static const fromJsonFactory = _$PersonAllDTOFromJson;
  static const toJsonFactory = _$PersonAllDTOToJson;
  Map<String, dynamic> toJson() => _$PersonAllDTOToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PersonAllDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)) &&
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
                const DeepCollectionEquality().equals(other.religion, religion)) &&
            (identical(other.horoscope, horoscope) || const DeepCollectionEquality().equals(other.horoscope, horoscope)) &&
            (identical(other.languages, languages) || const DeepCollectionEquality().equals(other.languages, languages)) &&
            (identical(other.interests, interests) || const DeepCollectionEquality().equals(other.interests, interests)) &&
            (identical(other.shape, shape) || const DeepCollectionEquality().equals(other.shape, shape)) &&
            (identical(other.facialHair, facialHair) || const DeepCollectionEquality().equals(other.facialHair, facialHair)) &&
            (identical(other.match, match) || const DeepCollectionEquality().equals(other.match, match)) &&
            (identical(other.minAge, minAge) || const DeepCollectionEquality().equals(other.minAge, minAge)) &&
            (identical(other.maxAge, maxAge) || const DeepCollectionEquality().equals(other.maxAge, maxAge)) &&
            (identical(other.chemistry, chemistry) || const DeepCollectionEquality().equals(other.chemistry, chemistry)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(photo) ^
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
      runtimeType.hashCode;
}

extension $PersonAllDTOExtension on PersonAllDTO {
  PersonAllDTO copyWith(
      {num? id,
      String? username,
      String? name,
      String? email,
      String? photo,
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
      int? chemistry}) {
    return PersonAllDTO(
        id: id ?? this.id,
        username: username ?? this.username,
        name: name ?? this.name,
        email: email ?? this.email,
        photo: photo ?? this.photo,
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
        chemistry: chemistry ?? this.chemistry);
  }

  PersonAllDTO copyWithWrapped(
      {Wrapped<num?>? id,
      Wrapped<String?>? username,
      Wrapped<String>? name,
      Wrapped<String>? email,
      Wrapped<String>? photo,
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
      Wrapped<int?>? chemistry}) {
    return PersonAllDTO(
        id: (id != null ? id.value : this.id),
        username: (username != null ? username.value : this.username),
        name: (name != null ? name.value : this.name),
        email: (email != null ? email.value : this.email),
        photo: (photo != null ? photo.value : this.photo),
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
        chemistry: (chemistry != null ? chemistry.value : this.chemistry));
  }
}

@JsonSerializable(explicitToJson: true)
class RegistrationDTO {
  RegistrationDTO({
    required this.username,
    required this.password,
    required this.name,
    required this.email,
    required this.photo,
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
  @JsonKey(name: 'photo')
  final String photo;
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
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)) &&
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
                const DeepCollectionEquality().equals(other.religion, religion)) &&
            (identical(other.horoscope, horoscope) || const DeepCollectionEquality().equals(other.horoscope, horoscope)) &&
            (identical(other.languages, languages) || const DeepCollectionEquality().equals(other.languages, languages)) &&
            (identical(other.interests, interests) || const DeepCollectionEquality().equals(other.interests, interests)) &&
            (identical(other.shape, shape) || const DeepCollectionEquality().equals(other.shape, shape)) &&
            (identical(other.facialHair, facialHair) || const DeepCollectionEquality().equals(other.facialHair, facialHair)) &&
            (identical(other.minAge, minAge) || const DeepCollectionEquality().equals(other.minAge, minAge)) &&
            (identical(other.maxAge, maxAge) || const DeepCollectionEquality().equals(other.maxAge, maxAge)) &&
            (identical(other.chemistry, chemistry) || const DeepCollectionEquality().equals(other.chemistry, chemistry)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(photo) ^
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
      runtimeType.hashCode;
}

extension $RegistrationDTOExtension on RegistrationDTO {
  RegistrationDTO copyWith(
      {String? username,
      String? password,
      String? name,
      String? email,
      String? photo,
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
      int? chemistry}) {
    return RegistrationDTO(
        username: username ?? this.username,
        password: password ?? this.password,
        name: name ?? this.name,
        email: email ?? this.email,
        photo: photo ?? this.photo,
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
        chemistry: chemistry ?? this.chemistry);
  }

  RegistrationDTO copyWithWrapped(
      {Wrapped<String>? username,
      Wrapped<String>? password,
      Wrapped<String>? name,
      Wrapped<String>? email,
      Wrapped<String>? photo,
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
      Wrapped<int?>? chemistry}) {
    return RegistrationDTO(
        username: (username != null ? username.value : this.username),
        password: (password != null ? password.value : this.password),
        name: (name != null ? name.value : this.name),
        email: (email != null ? email.value : this.email),
        photo: (photo != null ? photo.value : this.photo),
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
        chemistry: (chemistry != null ? chemistry.value : this.chemistry));
  }
}

@JsonSerializable(explicitToJson: true)
class SendMessageDTO {
  SendMessageDTO({
    required this.addresseeId,
    required this.jwt,
    required this.text,
  });

  factory SendMessageDTO.fromJson(Map<String, dynamic> json) =>
      _$SendMessageDTOFromJson(json);

  @JsonKey(name: 'addresseeId')
  final num addresseeId;
  @JsonKey(name: 'jwt')
  final String jwt;
  @JsonKey(name: 'text')
  final String text;
  static const fromJsonFactory = _$SendMessageDTOFromJson;
  static const toJsonFactory = _$SendMessageDTOToJson;
  Map<String, dynamic> toJson() => _$SendMessageDTOToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SendMessageDTO &&
            (identical(other.addresseeId, addresseeId) ||
                const DeepCollectionEquality()
                    .equals(other.addresseeId, addresseeId)) &&
            (identical(other.jwt, jwt) ||
                const DeepCollectionEquality().equals(other.jwt, jwt)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(addresseeId) ^
      const DeepCollectionEquality().hash(jwt) ^
      const DeepCollectionEquality().hash(text) ^
      runtimeType.hashCode;
}

extension $SendMessageDTOExtension on SendMessageDTO {
  SendMessageDTO copyWith({num? addresseeId, String? jwt, String? text}) {
    return SendMessageDTO(
        addresseeId: addresseeId ?? this.addresseeId,
        jwt: jwt ?? this.jwt,
        text: text ?? this.text);
  }

  SendMessageDTO copyWithWrapped(
      {Wrapped<num>? addresseeId,
      Wrapped<String>? jwt,
      Wrapped<String>? text}) {
    return SendMessageDTO(
        addresseeId:
            (addresseeId != null ? addresseeId.value : this.addresseeId),
        jwt: (jwt != null ? jwt.value : this.jwt),
        text: (text != null ? text.value : this.text));
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
