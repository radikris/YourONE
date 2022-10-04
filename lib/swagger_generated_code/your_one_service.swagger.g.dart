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

Person _$PersonFromJson(Map<String, dynamic> json) => Person(
      birthDate: json['birthDate'] == null
          ? null
          : DateTime.parse(json['birthDate'] as String),
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      id: json['id'] as num,
      lastName: json['lastName'] as String,
      photo: json['photo'] as String?,
      roles: (json['roles'] as List<dynamic>?)
              ?.map((e) => Role.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      uid: json['uid'] as String,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      'birthDate': _dateToJson(instance.birthDate),
      'email': instance.email,
      'firstName': instance.firstName,
      'id': instance.id,
      'lastName': instance.lastName,
      'photo': instance.photo,
      'roles': instance.roles.map((e) => e.toJson()).toList(),
      'uid': instance.uid,
      'username': instance.username,
    };

RegistrationDTO _$RegistrationDTOFromJson(Map<String, dynamic> json) =>
    RegistrationDTO(
      username: json['username'] as String,
      password: json['password'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      photo: json['photo'] as String,
      birthDate: DateTime.parse(json['birthDate'] as String),
    );

Map<String, dynamic> _$RegistrationDTOToJson(RegistrationDTO instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'photo': instance.photo,
      'birthDate': _dateToJson(instance.birthDate),
    };

Role _$RoleFromJson(Map<String, dynamic> json) => Role(
      id: json['id'] as num,
      role: roleRoleFromJson(json['role']),
    );

Map<String, dynamic> _$RoleToJson(Role instance) => <String, dynamic>{
      'id': instance.id,
      'role': roleRoleToJson(instance.role),
    };

Tokens _$TokensFromJson(Map<String, dynamic> json) => Tokens(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$TokensToJson(Tokens instance) => <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
