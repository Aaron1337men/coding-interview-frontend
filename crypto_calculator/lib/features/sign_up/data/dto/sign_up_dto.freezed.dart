// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignUpRequestDTO _$SignUpRequestDTOFromJson(Map<String, dynamic> json) {
  return _SignUpRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$SignUpRequestDTO {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get givenName => throw _privateConstructorUsedError;

  /// Serializes this SignUpRequestDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignUpRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpRequestDTOCopyWith<SignUpRequestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpRequestDTOCopyWith<$Res> {
  factory $SignUpRequestDTOCopyWith(
          SignUpRequestDTO value, $Res Function(SignUpRequestDTO) then) =
      _$SignUpRequestDTOCopyWithImpl<$Res, SignUpRequestDTO>;
  @useResult
  $Res call({String email, String password, String? name, String? givenName});
}

/// @nodoc
class _$SignUpRequestDTOCopyWithImpl<$Res, $Val extends SignUpRequestDTO>
    implements $SignUpRequestDTOCopyWith<$Res> {
  _$SignUpRequestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? name = freezed,
    Object? givenName = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      givenName: freezed == givenName
          ? _value.givenName
          : givenName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpRequestDTOImplCopyWith<$Res>
    implements $SignUpRequestDTOCopyWith<$Res> {
  factory _$$SignUpRequestDTOImplCopyWith(_$SignUpRequestDTOImpl value,
          $Res Function(_$SignUpRequestDTOImpl) then) =
      __$$SignUpRequestDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password, String? name, String? givenName});
}

/// @nodoc
class __$$SignUpRequestDTOImplCopyWithImpl<$Res>
    extends _$SignUpRequestDTOCopyWithImpl<$Res, _$SignUpRequestDTOImpl>
    implements _$$SignUpRequestDTOImplCopyWith<$Res> {
  __$$SignUpRequestDTOImplCopyWithImpl(_$SignUpRequestDTOImpl _value,
      $Res Function(_$SignUpRequestDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? name = freezed,
    Object? givenName = freezed,
  }) {
    return _then(_$SignUpRequestDTOImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      givenName: freezed == givenName
          ? _value.givenName
          : givenName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpRequestDTOImpl extends _SignUpRequestDTO {
  const _$SignUpRequestDTOImpl(
      {required this.email, required this.password, this.name, this.givenName})
      : super._();

  factory _$SignUpRequestDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpRequestDTOImplFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  final String? name;
  @override
  final String? givenName;

  @override
  String toString() {
    return 'SignUpRequestDTO(email: $email, password: $password, name: $name, givenName: $givenName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpRequestDTOImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.givenName, givenName) ||
                other.givenName == givenName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, name, givenName);

  /// Create a copy of SignUpRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpRequestDTOImplCopyWith<_$SignUpRequestDTOImpl> get copyWith =>
      __$$SignUpRequestDTOImplCopyWithImpl<_$SignUpRequestDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpRequestDTOImplToJson(
      this,
    );
  }
}

abstract class _SignUpRequestDTO extends SignUpRequestDTO {
  const factory _SignUpRequestDTO(
      {required final String email,
      required final String password,
      final String? name,
      final String? givenName}) = _$SignUpRequestDTOImpl;
  const _SignUpRequestDTO._() : super._();

  factory _SignUpRequestDTO.fromJson(Map<String, dynamic> json) =
      _$SignUpRequestDTOImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  String? get name;
  @override
  String? get givenName;

  /// Create a copy of SignUpRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpRequestDTOImplCopyWith<_$SignUpRequestDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SignUpResponseDTO _$SignUpResponseDTOFromJson(Map<String, dynamic> json) {
  return _SignUpResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$SignUpResponseDTO {
  bool get success => throw _privateConstructorUsedError;

  /// Serializes this SignUpResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignUpResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpResponseDTOCopyWith<SignUpResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpResponseDTOCopyWith<$Res> {
  factory $SignUpResponseDTOCopyWith(
          SignUpResponseDTO value, $Res Function(SignUpResponseDTO) then) =
      _$SignUpResponseDTOCopyWithImpl<$Res, SignUpResponseDTO>;
  @useResult
  $Res call({bool success});
}

/// @nodoc
class _$SignUpResponseDTOCopyWithImpl<$Res, $Val extends SignUpResponseDTO>
    implements $SignUpResponseDTOCopyWith<$Res> {
  _$SignUpResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpResponseDTO
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
abstract class _$$SignUpResponseDTOImplCopyWith<$Res>
    implements $SignUpResponseDTOCopyWith<$Res> {
  factory _$$SignUpResponseDTOImplCopyWith(_$SignUpResponseDTOImpl value,
          $Res Function(_$SignUpResponseDTOImpl) then) =
      __$$SignUpResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success});
}

/// @nodoc
class __$$SignUpResponseDTOImplCopyWithImpl<$Res>
    extends _$SignUpResponseDTOCopyWithImpl<$Res, _$SignUpResponseDTOImpl>
    implements _$$SignUpResponseDTOImplCopyWith<$Res> {
  __$$SignUpResponseDTOImplCopyWithImpl(_$SignUpResponseDTOImpl _value,
      $Res Function(_$SignUpResponseDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_$SignUpResponseDTOImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpResponseDTOImpl implements _SignUpResponseDTO {
  const _$SignUpResponseDTOImpl({this.success = false});

  factory _$SignUpResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpResponseDTOImplFromJson(json);

  @override
  @JsonKey()
  final bool success;

  @override
  String toString() {
    return 'SignUpResponseDTO(success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpResponseDTOImpl &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success);

  /// Create a copy of SignUpResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpResponseDTOImplCopyWith<_$SignUpResponseDTOImpl> get copyWith =>
      __$$SignUpResponseDTOImplCopyWithImpl<_$SignUpResponseDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _SignUpResponseDTO implements SignUpResponseDTO {
  const factory _SignUpResponseDTO({final bool success}) =
      _$SignUpResponseDTOImpl;

  factory _SignUpResponseDTO.fromJson(Map<String, dynamic> json) =
      _$SignUpResponseDTOImpl.fromJson;

  @override
  bool get success;

  /// Create a copy of SignUpResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpResponseDTOImplCopyWith<_$SignUpResponseDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
