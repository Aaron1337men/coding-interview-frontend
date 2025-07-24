// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'is_user_logged_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IsUserLoggedRequestDTO _$IsUserLoggedRequestDTOFromJson(
    Map<String, dynamic> json) {
  return _IsUserLoggedRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$IsUserLoggedRequestDTO {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this IsUserLoggedRequestDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IsUserLoggedRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IsUserLoggedRequestDTOCopyWith<IsUserLoggedRequestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IsUserLoggedRequestDTOCopyWith<$Res> {
  factory $IsUserLoggedRequestDTOCopyWith(IsUserLoggedRequestDTO value,
          $Res Function(IsUserLoggedRequestDTO) then) =
      _$IsUserLoggedRequestDTOCopyWithImpl<$Res, IsUserLoggedRequestDTO>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$IsUserLoggedRequestDTOCopyWithImpl<$Res,
        $Val extends IsUserLoggedRequestDTO>
    implements $IsUserLoggedRequestDTOCopyWith<$Res> {
  _$IsUserLoggedRequestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IsUserLoggedRequestDTO
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
abstract class _$$IsUserLoggedRequestDTOImplCopyWith<$Res>
    implements $IsUserLoggedRequestDTOCopyWith<$Res> {
  factory _$$IsUserLoggedRequestDTOImplCopyWith(
          _$IsUserLoggedRequestDTOImpl value,
          $Res Function(_$IsUserLoggedRequestDTOImpl) then) =
      __$$IsUserLoggedRequestDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$IsUserLoggedRequestDTOImplCopyWithImpl<$Res>
    extends _$IsUserLoggedRequestDTOCopyWithImpl<$Res,
        _$IsUserLoggedRequestDTOImpl>
    implements _$$IsUserLoggedRequestDTOImplCopyWith<$Res> {
  __$$IsUserLoggedRequestDTOImplCopyWithImpl(
      _$IsUserLoggedRequestDTOImpl _value,
      $Res Function(_$IsUserLoggedRequestDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of IsUserLoggedRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$IsUserLoggedRequestDTOImpl(
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
class _$IsUserLoggedRequestDTOImpl extends _IsUserLoggedRequestDTO {
  const _$IsUserLoggedRequestDTOImpl(
      {required this.email, required this.password})
      : super._();

  factory _$IsUserLoggedRequestDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$IsUserLoggedRequestDTOImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'IsUserLoggedRequestDTO(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsUserLoggedRequestDTOImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of IsUserLoggedRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IsUserLoggedRequestDTOImplCopyWith<_$IsUserLoggedRequestDTOImpl>
      get copyWith => __$$IsUserLoggedRequestDTOImplCopyWithImpl<
          _$IsUserLoggedRequestDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IsUserLoggedRequestDTOImplToJson(
      this,
    );
  }
}

abstract class _IsUserLoggedRequestDTO extends IsUserLoggedRequestDTO {
  const factory _IsUserLoggedRequestDTO(
      {required final String email,
      required final String password}) = _$IsUserLoggedRequestDTOImpl;
  const _IsUserLoggedRequestDTO._() : super._();

  factory _IsUserLoggedRequestDTO.fromJson(Map<String, dynamic> json) =
      _$IsUserLoggedRequestDTOImpl.fromJson;

  @override
  String get email;
  @override
  String get password;

  /// Create a copy of IsUserLoggedRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IsUserLoggedRequestDTOImplCopyWith<_$IsUserLoggedRequestDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

IsUserLoggedResponseDTO _$IsUserLoggedResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _IsUserLoggedResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$IsUserLoggedResponseDTO {
  bool get success => throw _privateConstructorUsedError;

  /// Serializes this IsUserLoggedResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IsUserLoggedResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IsUserLoggedResponseDTOCopyWith<IsUserLoggedResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IsUserLoggedResponseDTOCopyWith<$Res> {
  factory $IsUserLoggedResponseDTOCopyWith(IsUserLoggedResponseDTO value,
          $Res Function(IsUserLoggedResponseDTO) then) =
      _$IsUserLoggedResponseDTOCopyWithImpl<$Res, IsUserLoggedResponseDTO>;
  @useResult
  $Res call({bool success});
}

/// @nodoc
class _$IsUserLoggedResponseDTOCopyWithImpl<$Res,
        $Val extends IsUserLoggedResponseDTO>
    implements $IsUserLoggedResponseDTOCopyWith<$Res> {
  _$IsUserLoggedResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IsUserLoggedResponseDTO
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
abstract class _$$IsUserLoggedResponseDTOImplCopyWith<$Res>
    implements $IsUserLoggedResponseDTOCopyWith<$Res> {
  factory _$$IsUserLoggedResponseDTOImplCopyWith(
          _$IsUserLoggedResponseDTOImpl value,
          $Res Function(_$IsUserLoggedResponseDTOImpl) then) =
      __$$IsUserLoggedResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success});
}

/// @nodoc
class __$$IsUserLoggedResponseDTOImplCopyWithImpl<$Res>
    extends _$IsUserLoggedResponseDTOCopyWithImpl<$Res,
        _$IsUserLoggedResponseDTOImpl>
    implements _$$IsUserLoggedResponseDTOImplCopyWith<$Res> {
  __$$IsUserLoggedResponseDTOImplCopyWithImpl(
      _$IsUserLoggedResponseDTOImpl _value,
      $Res Function(_$IsUserLoggedResponseDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of IsUserLoggedResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_$IsUserLoggedResponseDTOImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IsUserLoggedResponseDTOImpl implements _IsUserLoggedResponseDTO {
  const _$IsUserLoggedResponseDTOImpl({this.success = false});

  factory _$IsUserLoggedResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$IsUserLoggedResponseDTOImplFromJson(json);

  @override
  @JsonKey()
  final bool success;

  @override
  String toString() {
    return 'IsUserLoggedResponseDTO(success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsUserLoggedResponseDTOImpl &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success);

  /// Create a copy of IsUserLoggedResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IsUserLoggedResponseDTOImplCopyWith<_$IsUserLoggedResponseDTOImpl>
      get copyWith => __$$IsUserLoggedResponseDTOImplCopyWithImpl<
          _$IsUserLoggedResponseDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IsUserLoggedResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _IsUserLoggedResponseDTO implements IsUserLoggedResponseDTO {
  const factory _IsUserLoggedResponseDTO({final bool success}) =
      _$IsUserLoggedResponseDTOImpl;

  factory _IsUserLoggedResponseDTO.fromJson(Map<String, dynamic> json) =
      _$IsUserLoggedResponseDTOImpl.fromJson;

  @override
  bool get success;

  /// Create a copy of IsUserLoggedResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IsUserLoggedResponseDTOImplCopyWith<_$IsUserLoggedResponseDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
