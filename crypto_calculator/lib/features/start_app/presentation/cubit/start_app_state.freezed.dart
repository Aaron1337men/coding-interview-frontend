// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StartAppState {
  Status get status => throw _privateConstructorUsedError;
  Locale? get locale => throw _privateConstructorUsedError;
  bool get isFirstInit => throw _privateConstructorUsedError;
  bool get userIsLogged => throw _privateConstructorUsedError;
  bool get alreadyLogged => throw _privateConstructorUsedError;
  bool get isEmailVerificated => throw _privateConstructorUsedError;

  /// Create a copy of StartAppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StartAppStateCopyWith<StartAppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartAppStateCopyWith<$Res> {
  factory $StartAppStateCopyWith(
          StartAppState value, $Res Function(StartAppState) then) =
      _$StartAppStateCopyWithImpl<$Res, StartAppState>;
  @useResult
  $Res call(
      {Status status,
      Locale? locale,
      bool isFirstInit,
      bool userIsLogged,
      bool alreadyLogged,
      bool isEmailVerificated});
}

/// @nodoc
class _$StartAppStateCopyWithImpl<$Res, $Val extends StartAppState>
    implements $StartAppStateCopyWith<$Res> {
  _$StartAppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StartAppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? locale = freezed,
    Object? isFirstInit = null,
    Object? userIsLogged = null,
    Object? alreadyLogged = null,
    Object? isEmailVerificated = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
      isFirstInit: null == isFirstInit
          ? _value.isFirstInit
          : isFirstInit // ignore: cast_nullable_to_non_nullable
              as bool,
      userIsLogged: null == userIsLogged
          ? _value.userIsLogged
          : userIsLogged // ignore: cast_nullable_to_non_nullable
              as bool,
      alreadyLogged: null == alreadyLogged
          ? _value.alreadyLogged
          : alreadyLogged // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmailVerificated: null == isEmailVerificated
          ? _value.isEmailVerificated
          : isEmailVerificated // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartAppStateImplCopyWith<$Res>
    implements $StartAppStateCopyWith<$Res> {
  factory _$$StartAppStateImplCopyWith(
          _$StartAppStateImpl value, $Res Function(_$StartAppStateImpl) then) =
      __$$StartAppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      Locale? locale,
      bool isFirstInit,
      bool userIsLogged,
      bool alreadyLogged,
      bool isEmailVerificated});
}

/// @nodoc
class __$$StartAppStateImplCopyWithImpl<$Res>
    extends _$StartAppStateCopyWithImpl<$Res, _$StartAppStateImpl>
    implements _$$StartAppStateImplCopyWith<$Res> {
  __$$StartAppStateImplCopyWithImpl(
      _$StartAppStateImpl _value, $Res Function(_$StartAppStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of StartAppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? locale = freezed,
    Object? isFirstInit = null,
    Object? userIsLogged = null,
    Object? alreadyLogged = null,
    Object? isEmailVerificated = null,
  }) {
    return _then(_$StartAppStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
      isFirstInit: null == isFirstInit
          ? _value.isFirstInit
          : isFirstInit // ignore: cast_nullable_to_non_nullable
              as bool,
      userIsLogged: null == userIsLogged
          ? _value.userIsLogged
          : userIsLogged // ignore: cast_nullable_to_non_nullable
              as bool,
      alreadyLogged: null == alreadyLogged
          ? _value.alreadyLogged
          : alreadyLogged // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmailVerificated: null == isEmailVerificated
          ? _value.isEmailVerificated
          : isEmailVerificated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$StartAppStateImpl implements _StartAppState {
  const _$StartAppStateImpl(
      {this.status = Status.initial,
      this.locale,
      this.isFirstInit = true,
      this.userIsLogged = false,
      this.alreadyLogged = false,
      this.isEmailVerificated = false});

  @override
  @JsonKey()
  final Status status;
  @override
  final Locale? locale;
  @override
  @JsonKey()
  final bool isFirstInit;
  @override
  @JsonKey()
  final bool userIsLogged;
  @override
  @JsonKey()
  final bool alreadyLogged;
  @override
  @JsonKey()
  final bool isEmailVerificated;

  @override
  String toString() {
    return 'StartAppState(status: $status, locale: $locale, isFirstInit: $isFirstInit, userIsLogged: $userIsLogged, alreadyLogged: $alreadyLogged, isEmailVerificated: $isEmailVerificated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartAppStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.isFirstInit, isFirstInit) ||
                other.isFirstInit == isFirstInit) &&
            (identical(other.userIsLogged, userIsLogged) ||
                other.userIsLogged == userIsLogged) &&
            (identical(other.alreadyLogged, alreadyLogged) ||
                other.alreadyLogged == alreadyLogged) &&
            (identical(other.isEmailVerificated, isEmailVerificated) ||
                other.isEmailVerificated == isEmailVerificated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, locale, isFirstInit,
      userIsLogged, alreadyLogged, isEmailVerificated);

  /// Create a copy of StartAppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartAppStateImplCopyWith<_$StartAppStateImpl> get copyWith =>
      __$$StartAppStateImplCopyWithImpl<_$StartAppStateImpl>(this, _$identity);
}

abstract class _StartAppState implements StartAppState {
  const factory _StartAppState(
      {final Status status,
      final Locale? locale,
      final bool isFirstInit,
      final bool userIsLogged,
      final bool alreadyLogged,
      final bool isEmailVerificated}) = _$StartAppStateImpl;

  @override
  Status get status;
  @override
  Locale? get locale;
  @override
  bool get isFirstInit;
  @override
  bool get userIsLogged;
  @override
  bool get alreadyLogged;
  @override
  bool get isEmailVerificated;

  /// Create a copy of StartAppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartAppStateImplCopyWith<_$StartAppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
