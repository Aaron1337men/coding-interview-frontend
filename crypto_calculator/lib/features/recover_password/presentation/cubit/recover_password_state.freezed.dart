// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recover_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecoverPasswordState {
  EmailForm get email => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  FormzStatus get formStatus => throw _privateConstructorUsedError;

  /// Create a copy of RecoverPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecoverPasswordStateCopyWith<RecoverPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecoverPasswordStateCopyWith<$Res> {
  factory $RecoverPasswordStateCopyWith(RecoverPasswordState value,
          $Res Function(RecoverPasswordState) then) =
      _$RecoverPasswordStateCopyWithImpl<$Res, RecoverPasswordState>;
  @useResult
  $Res call({EmailForm email, Status status, FormzStatus formStatus});
}

/// @nodoc
class _$RecoverPasswordStateCopyWithImpl<$Res,
        $Val extends RecoverPasswordState>
    implements $RecoverPasswordStateCopyWith<$Res> {
  _$RecoverPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecoverPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? status = null,
    Object? formStatus = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailForm,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      formStatus: null == formStatus
          ? _value.formStatus
          : formStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecoverPasswordStateImplCopyWith<$Res>
    implements $RecoverPasswordStateCopyWith<$Res> {
  factory _$$RecoverPasswordStateImplCopyWith(_$RecoverPasswordStateImpl value,
          $Res Function(_$RecoverPasswordStateImpl) then) =
      __$$RecoverPasswordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EmailForm email, Status status, FormzStatus formStatus});
}

/// @nodoc
class __$$RecoverPasswordStateImplCopyWithImpl<$Res>
    extends _$RecoverPasswordStateCopyWithImpl<$Res, _$RecoverPasswordStateImpl>
    implements _$$RecoverPasswordStateImplCopyWith<$Res> {
  __$$RecoverPasswordStateImplCopyWithImpl(_$RecoverPasswordStateImpl _value,
      $Res Function(_$RecoverPasswordStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecoverPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? status = null,
    Object? formStatus = null,
  }) {
    return _then(_$RecoverPasswordStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailForm,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      formStatus: null == formStatus
          ? _value.formStatus
          : formStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc

class _$RecoverPasswordStateImpl implements _RecoverPasswordState {
  const _$RecoverPasswordStateImpl(
      {this.email = const EmailForm.pure(),
      this.status = Status.initial,
      this.formStatus = FormzStatus.pure});

  @override
  @JsonKey()
  final EmailForm email;
  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final FormzStatus formStatus;

  @override
  String toString() {
    return 'RecoverPasswordState(email: $email, status: $status, formStatus: $formStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecoverPasswordStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.formStatus, formStatus) ||
                other.formStatus == formStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, status, formStatus);

  /// Create a copy of RecoverPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecoverPasswordStateImplCopyWith<_$RecoverPasswordStateImpl>
      get copyWith =>
          __$$RecoverPasswordStateImplCopyWithImpl<_$RecoverPasswordStateImpl>(
              this, _$identity);
}

abstract class _RecoverPasswordState implements RecoverPasswordState {
  const factory _RecoverPasswordState(
      {final EmailForm email,
      final Status status,
      final FormzStatus formStatus}) = _$RecoverPasswordStateImpl;

  @override
  EmailForm get email;
  @override
  Status get status;
  @override
  FormzStatus get formStatus;

  /// Create a copy of RecoverPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecoverPasswordStateImplCopyWith<_$RecoverPasswordStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
