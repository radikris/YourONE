// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileState {
  UserProfile get yourSelf => throw _privateConstructorUsedError;
  UserProfile get yourOne => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
  $Res call({UserProfile yourSelf, UserProfile yourOne});

  $UserProfileCopyWith<$Res> get yourSelf;
  $UserProfileCopyWith<$Res> get yourOne;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;

  @override
  $Res call({
    Object? yourSelf = freezed,
    Object? yourOne = freezed,
  }) {
    return _then(_value.copyWith(
      yourSelf: yourSelf == freezed
          ? _value.yourSelf
          : yourSelf // ignore: cast_nullable_to_non_nullable
              as UserProfile,
      yourOne: yourOne == freezed
          ? _value.yourOne
          : yourOne // ignore: cast_nullable_to_non_nullable
              as UserProfile,
    ));
  }

  @override
  $UserProfileCopyWith<$Res> get yourSelf {
    return $UserProfileCopyWith<$Res>(_value.yourSelf, (value) {
      return _then(_value.copyWith(yourSelf: value));
    });
  }

  @override
  $UserProfileCopyWith<$Res> get yourOne {
    return $UserProfileCopyWith<$Res>(_value.yourOne, (value) {
      return _then(_value.copyWith(yourOne: value));
    });
  }
}

/// @nodoc
abstract class _$$_ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$_ProfileStateCopyWith(
          _$_ProfileState value, $Res Function(_$_ProfileState) then) =
      __$$_ProfileStateCopyWithImpl<$Res>;
  @override
  $Res call({UserProfile yourSelf, UserProfile yourOne});

  @override
  $UserProfileCopyWith<$Res> get yourSelf;
  @override
  $UserProfileCopyWith<$Res> get yourOne;
}

/// @nodoc
class __$$_ProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$$_ProfileStateCopyWith<$Res> {
  __$$_ProfileStateCopyWithImpl(
      _$_ProfileState _value, $Res Function(_$_ProfileState) _then)
      : super(_value, (v) => _then(v as _$_ProfileState));

  @override
  _$_ProfileState get _value => super._value as _$_ProfileState;

  @override
  $Res call({
    Object? yourSelf = freezed,
    Object? yourOne = freezed,
  }) {
    return _then(_$_ProfileState(
      yourSelf: yourSelf == freezed
          ? _value.yourSelf
          : yourSelf // ignore: cast_nullable_to_non_nullable
              as UserProfile,
      yourOne: yourOne == freezed
          ? _value.yourOne
          : yourOne // ignore: cast_nullable_to_non_nullable
              as UserProfile,
    ));
  }
}

/// @nodoc

class _$_ProfileState with DiagnosticableTreeMixin implements _ProfileState {
  const _$_ProfileState({required this.yourSelf, required this.yourOne});

  @override
  final UserProfile yourSelf;
  @override
  final UserProfile yourOne;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileState(yourSelf: $yourSelf, yourOne: $yourOne)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileState'))
      ..add(DiagnosticsProperty('yourSelf', yourSelf))
      ..add(DiagnosticsProperty('yourOne', yourOne));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileState &&
            const DeepCollectionEquality().equals(other.yourSelf, yourSelf) &&
            const DeepCollectionEquality().equals(other.yourOne, yourOne));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(yourSelf),
      const DeepCollectionEquality().hash(yourOne));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      __$$_ProfileStateCopyWithImpl<_$_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {required final UserProfile yourSelf,
      required final UserProfile yourOne}) = _$_ProfileState;

  @override
  UserProfile get yourSelf;
  @override
  UserProfile get yourOne;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
