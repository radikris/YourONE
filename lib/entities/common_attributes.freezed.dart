// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'common_attributes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommonAttributes _$CommonAttributesFromJson(Map<String, dynamic> json) {
  return _CommonAttributes.fromJson(json);
}

/// @nodoc
mixin _$CommonAttributes {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'matches')
  Map<String, dynamic>? get matches => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonAttributesCopyWith<CommonAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonAttributesCopyWith<$Res> {
  factory $CommonAttributesCopyWith(
          CommonAttributes value, $Res Function(CommonAttributes) then) =
      _$CommonAttributesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'matches') Map<String, dynamic>? matches});
}

/// @nodoc
class _$CommonAttributesCopyWithImpl<$Res>
    implements $CommonAttributesCopyWith<$Res> {
  _$CommonAttributesCopyWithImpl(this._value, this._then);

  final CommonAttributes _value;
  // ignore: unused_field
  final $Res Function(CommonAttributes) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? matches = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      matches: matches == freezed
          ? _value.matches
          : matches // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$$_CommonAttributesCopyWith<$Res>
    implements $CommonAttributesCopyWith<$Res> {
  factory _$$_CommonAttributesCopyWith(
          _$_CommonAttributes value, $Res Function(_$_CommonAttributes) then) =
      __$$_CommonAttributesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'matches') Map<String, dynamic>? matches});
}

/// @nodoc
class __$$_CommonAttributesCopyWithImpl<$Res>
    extends _$CommonAttributesCopyWithImpl<$Res>
    implements _$$_CommonAttributesCopyWith<$Res> {
  __$$_CommonAttributesCopyWithImpl(
      _$_CommonAttributes _value, $Res Function(_$_CommonAttributes) _then)
      : super(_value, (v) => _then(v as _$_CommonAttributes));

  @override
  _$_CommonAttributes get _value => super._value as _$_CommonAttributes;

  @override
  $Res call({
    Object? name = freezed,
    Object? matches = freezed,
  }) {
    return _then(_$_CommonAttributes(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      matches: matches == freezed
          ? _value._matches
          : matches // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommonAttributes
    with DiagnosticableTreeMixin
    implements _CommonAttributes {
  const _$_CommonAttributes(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'matches') final Map<String, dynamic>? matches})
      : _matches = matches;

  factory _$_CommonAttributes.fromJson(Map<String, dynamic> json) =>
      _$$_CommonAttributesFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  final Map<String, dynamic>? _matches;
  @override
  @JsonKey(name: 'matches')
  Map<String, dynamic>? get matches {
    final value = _matches;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommonAttributes(name: $name, matches: $matches)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommonAttributes'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('matches', matches));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommonAttributes &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other._matches, _matches));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_matches));

  @JsonKey(ignore: true)
  @override
  _$$_CommonAttributesCopyWith<_$_CommonAttributes> get copyWith =>
      __$$_CommonAttributesCopyWithImpl<_$_CommonAttributes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommonAttributesToJson(this);
  }
}

abstract class _CommonAttributes implements CommonAttributes {
  const factory _CommonAttributes(
          {@JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'matches') final Map<String, dynamic>? matches}) =
      _$_CommonAttributes;

  factory _CommonAttributes.fromJson(Map<String, dynamic> json) =
      _$_CommonAttributes.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'matches')
  Map<String, dynamic>? get matches;
  @override
  @JsonKey(ignore: true)
  _$$_CommonAttributesCopyWith<_$_CommonAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}
