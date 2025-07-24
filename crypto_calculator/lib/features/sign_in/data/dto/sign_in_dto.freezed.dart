// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignInRequestDTO _$SignInRequestDTOFromJson(Map<String, dynamic> json) {
  return _SignInRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$SignInRequestDTO {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this SignInRequestDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignInRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignInRequestDTOCopyWith<SignInRequestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInRequestDTOCopyWith<$Res> {
  factory $SignInRequestDTOCopyWith(
          SignInRequestDTO value, $Res Function(SignInRequestDTO) then) =
      _$SignInRequestDTOCopyWithImpl<$Res, SignInRequestDTO>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$SignInRequestDTOCopyWithImpl<$Res, $Val extends SignInRequestDTO>
    implements $SignInRequestDTOCopyWith<$Res> {
  _$SignInRequestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInRequestDTOImplCopyWith<$Res>
    implements $SignInRequestDTOCopyWith<$Res> {
  factory _$$SignInRequestDTOImplCopyWith(_$SignInRequestDTOImpl value,
          $Res Function(_$SignInRequestDTOImpl) then) =
      __$$SignInRequestDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignInRequestDTOImplCopyWithImpl<$Res>
    extends _$SignInRequestDTOCopyWithImpl<$Res, _$SignInRequestDTOImpl>
    implements _$$SignInRequestDTOImplCopyWith<$Res> {
  __$$SignInRequestDTOImplCopyWithImpl(_$SignInRequestDTOImpl _value,
      $Res Function(_$SignInRequestDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignInRequestDTOImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInRequestDTOImpl extends _SignInRequestDTO {
  const _$SignInRequestDTOImpl({required this.email, required this.password})
      : super._();

  factory _$SignInRequestDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInRequestDTOImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInRequestDTO(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInRequestDTOImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of SignInRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInRequestDTOImplCopyWith<_$SignInRequestDTOImpl> get copyWith =>
      __$$SignInRequestDTOImplCopyWithImpl<_$SignInRequestDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInRequestDTOImplToJson(
      this,
    );
  }
}

abstract class _SignInRequestDTO extends SignInRequestDTO {
  const factory _SignInRequestDTO(
      {required final String email,
      required final String password}) = _$SignInRequestDTOImpl;
  const _SignInRequestDTO._() : super._();

  factory _SignInRequestDTO.fromJson(Map<String, dynamic> json) =
      _$SignInRequestDTOImpl.fromJson;

  @override
  String get email;
  @override
  String get password;

  /// Create a copy of SignInRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInRequestDTOImplCopyWith<_$SignInRequestDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SignInResponseDTO _$SignInResponseDTOFromJson(Map<String, dynamic> json) {
  return _SignInResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$SignInResponseDTO {
  bool get success => throw _privateConstructorUsedError;

  /// Serializes this SignInResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignInResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignInResponseDTOCopyWith<SignInResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInResponseDTOCopyWith<$Res> {
  factory $SignInResponseDTOCopyWith(
          SignInResponseDTO value, $Res Function(SignInResponseDTO) then) =
      _$SignInResponseDTOCopyWithImpl<$Res, SignInResponseDTO>;
  @useResult
  $Res call({bool success});
}

/// @nodoc
class _$SignInResponseDTOCopyWithImpl<$Res, $Val extends SignInResponseDTO>
    implements $SignInResponseDTOCopyWith<$Res> {
  _$SignInResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInResponseDTOImplCopyWith<$Res>
    implements $SignInResponseDTOCopyWith<$Res> {
  factory _$$SignInResponseDTOImplCopyWith(_$SignInResponseDTOImpl value,
          $Res Function(_$SignInResponseDTOImpl) then) =
      __$$SignInResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success});
}

/// @nodoc
class __$$SignInResponseDTOImplCopyWithImpl<$Res>
    extends _$SignInResponseDTOCopyWithImpl<$Res, _$SignInResponseDTOImpl>
    implements _$$SignInResponseDTOImplCopyWith<$Res> {
  __$$SignInResponseDTOImplCopyWithImpl(_$SignInResponseDTOImpl _value,
      $Res Function(_$SignInResponseDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_$SignInResponseDTOImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInResponseDTOImpl implements _SignInResponseDTO {
  const _$SignInResponseDTOImpl({this.success = false});

  factory _$SignInResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInResponseDTOImplFromJson(json);

  @override
  @JsonKey()
  final bool success;

  @override
  String toString() {
    return 'SignInResponseDTO(success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInResponseDTOImpl &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success);

  /// Create a copy of SignInResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInResponseDTOImplCopyWith<_$SignInResponseDTOImpl> get copyWith =>
      __$$SignInResponseDTOImplCopyWithImpl<_$SignInResponseDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _SignInResponseDTO implements SignInResponseDTO {
  const factory _SignInResponseDTO({final bool success}) =
      _$SignInResponseDTOImpl;

  factory _SignInResponseDTO.fromJson(Map<String, dynamic> json) =
      _$SignInResponseDTOImpl.fromJson;

  @override
  bool get success;

  /// Create a copy of SignInResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInResponseDTOImplCopyWith<_$SignInResponseDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
