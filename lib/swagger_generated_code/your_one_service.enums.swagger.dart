import 'package:json_annotation/json_annotation.dart';

enum RoleRole {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('ROLE_USER')
  roleUser,
  @JsonValue('ROLE_ADMIN')
  roleAdmin
}

const $RoleRoleMap = {
  RoleRole.roleUser: 'ROLE_USER',
  RoleRole.roleAdmin: 'ROLE_ADMIN'
};
