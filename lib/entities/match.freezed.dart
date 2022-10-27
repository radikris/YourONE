// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'match.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Match _$MatchFromJson(Map<String, dynamic> json) {
  return _Match.fromJson(json);
}

/// @nodoc
mixin _$Match {
  @JsonKey(name: 'pct')
  int? get pct => throw _privateConstructorUsedError;
  @JsonKey(name: 'commonAttributes', defaultValue: <CommonAttributes>[])
  List<CommonAttributes>? get commonAttributes =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchCopyWith<Match> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchCopyWith<$Res> {
  factory $MatchCopyWith(Match value, $Res Function(Match) then) =
      _$MatchCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'pct')
          int? pct,
      @JsonKey(name: 'commonAttributes', defaultValue: <CommonAttributes>[])
          List<CommonAttributes>? commonAttributes});
}

/// @nodoc
class _$MatchCopyWithImpl<$Res> implements $MatchCopyWith<$Res> {
  _$MatchCopyWithImpl(this._value, this._then);

  final Match _value;
  // ignore: unused_field
  final $Res Function(Match) _then;

  @override
  $Res call({
    Object? pct = freezed,
    Object? commonAttributes = freezed,
  }) {
    return _then(_value.copyWith(
      pct: pct == freezed
          ? _value.pct
          : pct // ignore: cast_nullable_to_non_nullable
              as int?,
      commonAttributes: commonAttributes == freezed
          ? _value.commonAttributes
          : commonAttributes // ignore: cast_nullable_to_non_nullable
              as List<CommonAttributes>?,
    ));
  }
}

/// @nodoc
abstract class _$$_MatchCopyWith<$Res> implements $MatchCopyWith<$Res> {
  factory _$$_MatchCopyWith(_$_Match value, $Res Function(_$_Match) then) =
      __$$_MatchCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'pct')
          int? pct,
      @JsonKey(name: 'commonAttributes', defaultValue: <CommonAttributes>[])
          List<CommonAttributes>? commonAttributes});
}

/// @nodoc
class __$$_MatchCopyWithImpl<$Res> extends _$MatchCopyWithImpl<$Res>
    implements _$$_MatchCopyWith<$Res> {
  __$$_MatchCopyWithImpl(_$_Match _value, $Res Function(_$_Match) _then)
      : super(_value, (v) => _then(v as _$_Match));

  @override
  _$_Match get _value => super._value as _$_Match;

  @override
  $Res call({
    Object? pct = freezed,
    Object? commonAttributes = freezed,
  }) {
    return _then(_$_Match(
      pct: pct == freezed
          ? _value.pct
          : pct // ignore: cast_nullable_to_non_nullable
              as int?,
      commonAttributes: commonAttributes == freezed
          ? _value._commonAttributes
          : commonAttributes // ignore: cast_nullable_to_non_nullable
              as List<CommonAttributes>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Match with DiagnosticableTreeMixin implements _Match {
  const _$_Match(
      {@JsonKey(name: 'pct')
          this.pct,
      @JsonKey(name: 'commonAttributes', defaultValue: <CommonAttributes>[])
          final List<CommonAttributes>? commonAttributes})
      : _commonAttributes = commonAttributes;

  factory _$_Match.fromJson(Map<String, dynamic> json) =>
      _$$_MatchFromJson(json);

  @override
  @JsonKey(name: 'pct')
  final int? pct;
  final List<CommonAttributes>? _commonAttributes;
  @override
  @JsonKey(name: 'commonAttributes', defaultValue: <CommonAttributes>[])
  List<CommonAttributes>? get commonAttributes {
    final value = _commonAttributes;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Match(pct: $pct, commonAttributes: $commonAttributes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Match'))
      ..add(DiagnosticsProperty('pct', pct))
      ..add(DiagnosticsProperty('commonAttributes', commonAttributes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Match &&
            const DeepCollectionEquality().equals(other.pct, pct) &&
            const DeepCollectionEquality()
                .equals(other._commonAttributes, _commonAttributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pct),
      const DeepCollectionEquality().hash(_commonAttributes));

  @JsonKey(ignore: true)
  @override
  _$$_MatchCopyWith<_$_Match> get copyWith =>
      __$$_MatchCopyWithImpl<_$_Match>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatchToJson(this);
  }
}

abstract class _Match implements Match {
  const factory _Match(
      {@JsonKey(name: 'pct')
          final int? pct,
      @JsonKey(name: 'commonAttributes', defaultValue: <CommonAttributes>[])
          final List<CommonAttributes>? commonAttributes}) = _$_Match;

  factory _Match.fromJson(Map<String, dynamic> json) = _$_Match.fromJson;

  @override
  @JsonKey(name: 'pct')
  int? get pct;
  @override
  @JsonKey(name: 'commonAttributes', defaultValue: <CommonAttributes>[])
  List<CommonAttributes>? get commonAttributes;
  @override
  @JsonKey(ignore: true)
  _$$_MatchCopyWith<_$_Match> get copyWith =>
      throw _privateConstructorUsedError;
}
