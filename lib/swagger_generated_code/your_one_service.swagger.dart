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
        baseUrl: baseUrl ?? 'http://localhost:8040/');
    return _$YourOneService(newClient);
  }

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
  Future<chopper.Response<Person>> apiPersonMeGet({String? authorization}) {
    generatedMapping.putIfAbsent(Person, () => Person.fromJsonFactory);

    return _apiPersonMeGet(authorization: authorization);
  }

  ///Gets the person entity of the current user
  ///@param Authorization Authorization
  @Get(path: '/api/person/me')
  Future<chopper.Response<Person>> _apiPersonMeGet(
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
class Person {
  Person({
    this.birthDate,
    required this.email,
    required this.firstName,
    required this.id,
    required this.lastName,
    this.photo,
    required this.roles,
    required this.uid,
    this.username,
  });

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  @JsonKey(name: 'birthDate', toJson: _dateToJson)
  final DateTime? birthDate;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'firstName')
  final String firstName;
  @JsonKey(name: 'id')
  final num id;
  @JsonKey(name: 'lastName')
  final String lastName;
  @JsonKey(name: 'photo')
  final String? photo;
  @JsonKey(name: 'roles', defaultValue: <Role>[])
  final List<Role> roles;
  @JsonKey(name: 'uid')
  final String uid;
  @JsonKey(name: 'username')
  final String? username;
  static const fromJsonFactory = _$PersonFromJson;
  static const toJsonFactory = _$PersonToJson;
  Map<String, dynamic> toJson() => _$PersonToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Person &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)) &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(roles) ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(username) ^
      runtimeType.hashCode;
}

extension $PersonExtension on Person {
  Person copyWith(
      {DateTime? birthDate,
      String? email,
      String? firstName,
      num? id,
      String? lastName,
      String? photo,
      List<Role>? roles,
      String? uid,
      String? username}) {
    return Person(
        birthDate: birthDate ?? this.birthDate,
        email: email ?? this.email,
        firstName: firstName ?? this.firstName,
        id: id ?? this.id,
        lastName: lastName ?? this.lastName,
        photo: photo ?? this.photo,
        roles: roles ?? this.roles,
        uid: uid ?? this.uid,
        username: username ?? this.username);
  }

  Person copyWithWrapped(
      {Wrapped<DateTime?>? birthDate,
      Wrapped<String>? email,
      Wrapped<String>? firstName,
      Wrapped<num>? id,
      Wrapped<String>? lastName,
      Wrapped<String?>? photo,
      Wrapped<List<Role>>? roles,
      Wrapped<String>? uid,
      Wrapped<String?>? username}) {
    return Person(
        birthDate: (birthDate != null ? birthDate.value : this.birthDate),
        email: (email != null ? email.value : this.email),
        firstName: (firstName != null ? firstName.value : this.firstName),
        id: (id != null ? id.value : this.id),
        lastName: (lastName != null ? lastName.value : this.lastName),
        photo: (photo != null ? photo.value : this.photo),
        roles: (roles != null ? roles.value : this.roles),
        uid: (uid != null ? uid.value : this.uid),
        username: (username != null ? username.value : this.username));
  }
}

@JsonSerializable(explicitToJson: true)
class RegistrationDTO {
  RegistrationDTO({
    required this.username,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.photo,
    required this.birthDate,
  });

  factory RegistrationDTO.fromJson(Map<String, dynamic> json) =>
      _$RegistrationDTOFromJson(json);

  @JsonKey(name: 'username')
  final String username;
  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'firstName')
  final String firstName;
  @JsonKey(name: 'lastName')
  final String lastName;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'photo')
  final String photo;
  @JsonKey(name: 'birthDate', toJson: _dateToJson)
  final DateTime birthDate;
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
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(birthDate) ^
      runtimeType.hashCode;
}

extension $RegistrationDTOExtension on RegistrationDTO {
  RegistrationDTO copyWith(
      {String? username,
      String? password,
      String? firstName,
      String? lastName,
      String? email,
      String? photo,
      DateTime? birthDate}) {
    return RegistrationDTO(
        username: username ?? this.username,
        password: password ?? this.password,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        email: email ?? this.email,
        photo: photo ?? this.photo,
        birthDate: birthDate ?? this.birthDate);
  }

  RegistrationDTO copyWithWrapped(
      {Wrapped<String>? username,
      Wrapped<String>? password,
      Wrapped<String>? firstName,
      Wrapped<String>? lastName,
      Wrapped<String>? email,
      Wrapped<String>? photo,
      Wrapped<DateTime>? birthDate}) {
    return RegistrationDTO(
        username: (username != null ? username.value : this.username),
        password: (password != null ? password.value : this.password),
        firstName: (firstName != null ? firstName.value : this.firstName),
        lastName: (lastName != null ? lastName.value : this.lastName),
        email: (email != null ? email.value : this.email),
        photo: (photo != null ? photo.value : this.photo),
        birthDate: (birthDate != null ? birthDate.value : this.birthDate));
  }
}

@JsonSerializable(explicitToJson: true)
class Role {
  Role({
    required this.id,
    required this.role,
  });

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);

  @JsonKey(name: 'id')
  final num id;
  @JsonKey(
    name: 'role',
    toJson: roleRoleToJson,
    fromJson: roleRoleFromJson,
  )
  final enums.RoleRole role;
  static const fromJsonFactory = _$RoleFromJson;
  static const toJsonFactory = _$RoleToJson;
  Map<String, dynamic> toJson() => _$RoleToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Role &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(role) ^
      runtimeType.hashCode;
}

extension $RoleExtension on Role {
  Role copyWith({num? id, enums.RoleRole? role}) {
    return Role(id: id ?? this.id, role: role ?? this.role);
  }

  Role copyWithWrapped({Wrapped<num>? id, Wrapped<enums.RoleRole>? role}) {
    return Role(
        id: (id != null ? id.value : this.id),
        role: (role != null ? role.value : this.role));
  }
}

@JsonSerializable(explicitToJson: true)
class Tokens {
  Tokens({
    required this.accessToken,
    required this.refreshToken,
  });

  factory Tokens.fromJson(Map<String, dynamic> json) => _$TokensFromJson(json);

  @JsonKey(name: 'accessToken')
  final String accessToken;
  @JsonKey(name: 'refreshToken')
  final String refreshToken;
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
                    .equals(other.refreshToken, refreshToken)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      runtimeType.hashCode;
}

extension $TokensExtension on Tokens {
  Tokens copyWith({String? accessToken, String? refreshToken}) {
    return Tokens(
        accessToken: accessToken ?? this.accessToken,
        refreshToken: refreshToken ?? this.refreshToken);
  }

  Tokens copyWithWrapped(
      {Wrapped<String>? accessToken, Wrapped<String>? refreshToken}) {
    return Tokens(
        accessToken:
            (accessToken != null ? accessToken.value : this.accessToken),
        refreshToken:
            (refreshToken != null ? refreshToken.value : this.refreshToken));
  }
}

String? roleRoleToJson(enums.RoleRole? roleRole) {
  return enums.$RoleRoleMap[roleRole];
}

enums.RoleRole roleRoleFromJson(
  Object? roleRole, [
  enums.RoleRole? defaultValue,
]) {
  if (roleRole is String) {
    return enums.$RoleRoleMap.entries
        .firstWhere(
            (element) => element.value.toLowerCase() == roleRole.toLowerCase(),
            orElse: () =>
                const MapEntry(enums.RoleRole.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$RoleRoleMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ?? defaultValue ?? enums.RoleRole.swaggerGeneratedUnknown;
}

List<String> roleRoleListToJson(List<enums.RoleRole>? roleRole) {
  if (roleRole == null) {
    return [];
  }

  return roleRole.map((e) => enums.$RoleRoleMap[e]!).toList();
}

List<enums.RoleRole> roleRoleListFromJson(
  List? roleRole, [
  List<enums.RoleRole>? defaultValue,
]) {
  if (roleRole == null) {
    return defaultValue ?? [];
  }

  return roleRole.map((e) => roleRoleFromJson(e.toString())).toList();
}

List<enums.RoleRole>? roleRoleNullableListFromJson(
  List? roleRole, [
  List<enums.RoleRole>? defaultValue,
]) {
  if (roleRole == null) {
    return defaultValue;
  }

  return roleRole.map((e) => roleRoleFromJson(e.toString())).toList();
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
