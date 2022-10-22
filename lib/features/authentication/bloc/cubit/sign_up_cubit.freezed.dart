// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpState {
  int get currentStep => throw _privateConstructorUsedError;
  UserProfile get yourSelf => throw _privateConstructorUsedError;
  UserProfile get yourOne => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
  $Res call(
      {int currentStep,
      UserProfile yourSelf,
      UserProfile yourOne,
      String? email,
      String? password,
      String? phoneNumber});

  $UserProfileCopyWith<$Res> get yourSelf;
  $UserProfileCopyWith<$Res> get yourOne;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;

  @override
  $Res call({
    Object? currentStep = freezed,
    Object? yourSelf = freezed,
    Object? yourOne = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      currentStep: currentStep == freezed
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as int,
      yourSelf: yourSelf == freezed
          ? _value.yourSelf
          : yourSelf // ignore: cast_nullable_to_non_nullable
              as UserProfile,
      yourOne: yourOne == freezed
          ? _value.yourOne
          : yourOne // ignore: cast_nullable_to_non_nullable
              as UserProfile,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_SignUpStateCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$_SignUpStateCopyWith(
          _$_SignUpState value, $Res Function(_$_SignUpState) then) =
      __$$_SignUpStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int currentStep,
      UserProfile yourSelf,
      UserProfile yourOne,
      String? email,
      String? password,
      String? phoneNumber});

  @override
  $UserProfileCopyWith<$Res> get yourSelf;
  @override
  $UserProfileCopyWith<$Res> get yourOne;
}

/// @nodoc
class __$$_SignUpStateCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements _$$_SignUpStateCopyWith<$Res> {
  __$$_SignUpStateCopyWithImpl(
      _$_SignUpState _value, $Res Function(_$_SignUpState) _then)
      : super(_value, (v) => _then(v as _$_SignUpState));

  @override
  _$_SignUpState get _value => super._value as _$_SignUpState;

  @override
  $Res call({
    Object? currentStep = freezed,
    Object? yourSelf = freezed,
    Object? yourOne = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$_SignUpState(
      currentStep: currentStep == freezed
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as int,
      yourSelf: yourSelf == freezed
          ? _value.yourSelf
          : yourSelf // ignore: cast_nullable_to_non_nullable
              as UserProfile,
      yourOne: yourOne == freezed
          ? _value.yourOne
          : yourOne // ignore: cast_nullable_to_non_nullable
              as UserProfile,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SignUpState with DiagnosticableTreeMixin implements _SignUpState {
  const _$_SignUpState(
      {required this.currentStep,
      required this.yourSelf,
      required this.yourOne,
      this.email,
      this.password,
      this.phoneNumber});

  @override
  final int currentStep;
  @override
  final UserProfile yourSelf;
  @override
  final UserProfile yourOne;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? phoneNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpState(currentStep: $currentStep, yourSelf: $yourSelf, yourOne: $yourOne, email: $email, password: $password, phoneNumber: $phoneNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpState'))
      ..add(DiagnosticsProperty('currentStep', currentStep))
      ..add(DiagnosticsProperty('yourSelf', yourSelf))
      ..add(DiagnosticsProperty('yourOne', yourOne))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpState &&
            const DeepCollectionEquality()
                .equals(other.currentStep, currentStep) &&
            const DeepCollectionEquality().equals(other.yourSelf, yourSelf) &&
            const DeepCollectionEquality().equals(other.yourOne, yourOne) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentStep),
      const DeepCollectionEquality().hash(yourSelf),
      const DeepCollectionEquality().hash(yourOne),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  _$$_SignUpStateCopyWith<_$_SignUpState> get copyWith =>
      __$$_SignUpStateCopyWithImpl<_$_SignUpState>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState(
      {required final int currentStep,
      required final UserProfile yourSelf,
      required final UserProfile yourOne,
      final String? email,
      final String? password,
      final String? phoneNumber}) = _$_SignUpState;

  @override
  int get currentStep;
  @override
  UserProfile get yourSelf;
  @override
  UserProfile get yourOne;
  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpStateCopyWith<_$_SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}
