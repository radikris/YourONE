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
  String get firstName => throw _privateConstructorUsedError;
  List<String> get test1 => throw _privateConstructorUsedError;
  List<int> get age => throw _privateConstructorUsedError;
  List<FileOrUrl>? get images => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;

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
      String firstName,
      List<String> test1,
      List<int> age,
      List<FileOrUrl>? images,
      String bio});
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
    Object? firstName = freezed,
    Object? test1 = freezed,
    Object? age = freezed,
    Object? images = freezed,
    Object? bio = freezed,
  }) {
    return _then(_value.copyWith(
      currentStep: currentStep == freezed
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      test1: test1 == freezed
          ? _value.test1
          : test1 // ignore: cast_nullable_to_non_nullable
              as List<String>,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as List<int>,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<FileOrUrl>?,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
    ));
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
      String firstName,
      List<String> test1,
      List<int> age,
      List<FileOrUrl>? images,
      String bio});
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
    Object? firstName = freezed,
    Object? test1 = freezed,
    Object? age = freezed,
    Object? images = freezed,
    Object? bio = freezed,
  }) {
    return _then(_$_SignUpState(
      currentStep: currentStep == freezed
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      test1: test1 == freezed
          ? _value._test1
          : test1 // ignore: cast_nullable_to_non_nullable
              as List<String>,
      age: age == freezed
          ? _value._age
          : age // ignore: cast_nullable_to_non_nullable
              as List<int>,
      images: images == freezed
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<FileOrUrl>?,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignUpState with DiagnosticableTreeMixin implements _SignUpState {
  const _$_SignUpState(
      {required this.currentStep,
      required this.firstName,
      required final List<String> test1,
      required final List<int> age,
      final List<FileOrUrl>? images,
      required this.bio})
      : _test1 = test1,
        _age = age,
        _images = images;

  @override
  final int currentStep;
  @override
  final String firstName;
  final List<String> _test1;
  @override
  List<String> get test1 {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_test1);
  }

  final List<int> _age;
  @override
  List<int> get age {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_age);
  }

  final List<FileOrUrl>? _images;
  @override
  List<FileOrUrl>? get images {
    final value = _images;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String bio;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpState(currentStep: $currentStep, firstName: $firstName, test1: $test1, age: $age, images: $images, bio: $bio)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpState'))
      ..add(DiagnosticsProperty('currentStep', currentStep))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('test1', test1))
      ..add(DiagnosticsProperty('age', age))
      ..add(DiagnosticsProperty('images', images))
      ..add(DiagnosticsProperty('bio', bio));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpState &&
            const DeepCollectionEquality()
                .equals(other.currentStep, currentStep) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other._test1, _test1) &&
            const DeepCollectionEquality().equals(other._age, _age) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other.bio, bio));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentStep),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(_test1),
      const DeepCollectionEquality().hash(_age),
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(bio));

  @JsonKey(ignore: true)
  @override
  _$$_SignUpStateCopyWith<_$_SignUpState> get copyWith =>
      __$$_SignUpStateCopyWithImpl<_$_SignUpState>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState(
      {required final int currentStep,
      required final String firstName,
      required final List<String> test1,
      required final List<int> age,
      final List<FileOrUrl>? images,
      required final String bio}) = _$_SignUpState;

  @override
  int get currentStep;
  @override
  String get firstName;
  @override
  List<String> get test1;
  @override
  List<int> get age;
  @override
  List<FileOrUrl>? get images;
  @override
  String get bio;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpStateCopyWith<_$_SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}
