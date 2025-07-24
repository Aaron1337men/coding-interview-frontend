// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recover_password_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecoverPasswordRequestDto _$RecoverPasswordRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _RecoverPasswordRequestDto.fromJson(json);
}

/// @nodoc
mixin _$RecoverPasswordRequestDto {
  String get email => throw _privateConstructorUsedError;

  /// Serializes this RecoverPasswordRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecoverPasswordRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecoverPasswordRequestDtoCopyWith<RecoverPasswordRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecoverPasswordRequestDtoCopyWith<$Res> {
  factory $RecoverPasswordRequestDtoCopyWith(RecoverPasswordRequestDto value,
          $Res Function(RecoverPasswordRequestDto) then) =
      _$RecoverPasswordRequestDtoCopyWithImpl<$Res, RecoverPasswordRequestDto>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$RecoverPasswordRequestDtoCopyWithImpl<$Res,
        $Val extends RecoverPasswordRequestDto>
    implements $RecoverPasswordRequestDtoCopyWith<$Res> {
  _$RecoverPasswordRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecoverPasswordRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecoverPasswordRequestDtoImplCopyWith<$Res>
    implements $RecoverPasswordRequestDtoCopyWith<$Res> {
  factory _$$RecoverPasswordRequestDtoImplCopyWith(
          _$RecoverPasswordRequestDtoImpl value,
          $Res Function(_$RecoverPasswordRequestDtoImpl) then) =
      __$$RecoverPasswordRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$RecoverPasswordRequestDtoImplCopyWithImpl<$Res>
    extends _$RecoverPasswordRequestDtoCopyWithImpl<$Res,
        _$RecoverPasswordRequestDtoImpl>
    implements _$$RecoverPasswordRequestDtoImplCopyWith<$Res> {
  __$$RecoverPasswordRequestDtoImplCopyWithImpl(
      _$RecoverPasswordRequestDtoImpl _value,
      $Res Function(_$RecoverPasswordRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecoverPasswordRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$RecoverPasswordRequestDtoImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecoverPasswordRequestDtoImpl extends _RecoverPasswordRequestDto {
  const _$RecoverPasswordRequestDtoImpl({required this.email}) : super._();

  factory _$RecoverPasswordRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecoverPasswordRequestDtoImplFromJson(json);

  @override
  final String email;

  @override
  String toString() {
    return 'RecoverPasswordRequestDto(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecoverPasswordRequestDtoImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of RecoverPasswordRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecoverPasswordRequestDtoImplCopyWith<_$RecoverPasswordRequestDtoImpl>
      get copyWith => __$$RecoverPasswordRequestDtoImplCopyWithImpl<
          _$RecoverPasswordRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecoverPasswordRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _RecoverPasswordRequestDto extends RecoverPasswordRequestDto {
  const factory _RecoverPasswordRequestDto({required final String email}) =
      _$RecoverPasswordRequestDtoImpl;
  const _RecoverPasswordRequestDto._() : super._();

  factory _RecoverPasswordRequestDto.fromJson(Map<String, dynamic> json) =
      _$RecoverPasswordRequestDtoImpl.fromJson;

  @override
  String get email;

  /// Create a copy of RecoverPasswordRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecoverPasswordRequestDtoImplCopyWith<_$RecoverPasswordRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RecoverPasswordResponseDTO _$RecoverPasswordResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _RecoverPasswordResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$RecoverPasswordResponseDTO {
  bool get success => throw _privateConstructorUsedError;

  /// Serializes this RecoverPasswordResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecoverPasswordResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecoverPasswordResponseDTOCopyWith<RecoverPasswordResponseDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecoverPasswordResponseDTOCopyWith<$Res> {
  factory $RecoverPasswordResponseDTOCopyWith(RecoverPasswordResponseDTO value,
          $Res Function(RecoverPasswordResponseDTO) then) =
      _$RecoverPasswordResponseDTOCopyWithImpl<$Res,
          RecoverPasswordResponseDTO>;
  @useResult
  $Res call({bool success});
}

/// @nodoc
class _$RecoverPasswordResponseDTOCopyWithImpl<$Res,
        $Val extends RecoverPasswordResponseDTO>
    implements $RecoverPasswordResponseDTOCopyWith<$Res> {
  _$RecoverPasswordResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecoverPasswordResponseDTO
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
abstract class _$$RecoverPasswordResponseDTOImplCopyWith<$Res>
    implements $RecoverPasswordResponseDTOCopyWith<$Res> {
  factory _$$RecoverPasswordResponseDTOImplCopyWith(
          _$RecoverPasswordResponseDTOImpl value,
          $Res Function(_$RecoverPasswordResponseDTOImpl) then) =
      __$$RecoverPasswordResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success});
}

/// @nodoc
class __$$RecoverPasswordResponseDTOImplCopyWithImpl<$Res>
    extends _$RecoverPasswordResponseDTOCopyWithImpl<$Res,
        _$RecoverPasswordResponseDTOImpl>
    implements _$$RecoverPasswordResponseDTOImplCopyWith<$Res> {
  __$$RecoverPasswordResponseDTOImplCopyWithImpl(
      _$RecoverPasswordResponseDTOImpl _value,
      $Res Function(_$RecoverPasswordResponseDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecoverPasswordResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_$RecoverPasswordResponseDTOImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecoverPasswordResponseDTOImpl implements _RecoverPasswordResponseDTO {
  const _$RecoverPasswordResponseDTOImpl({this.success = false});

  factory _$RecoverPasswordResponseDTOImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RecoverPasswordResponseDTOImplFromJson(json);

  @override
  @JsonKey()
  final bool success;

  @override
  String toString() {
    return 'RecoverPasswordResponseDTO(success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecoverPasswordResponseDTOImpl &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success);

  /// Create a copy of RecoverPasswordResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecoverPasswordResponseDTOImplCopyWith<_$RecoverPasswordResponseDTOImpl>
      get copyWith => __$$RecoverPasswordResponseDTOImplCopyWithImpl<
          _$RecoverPasswordResponseDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecoverPasswordResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _RecoverPasswordResponseDTO
    implements RecoverPasswordResponseDTO {
  const factory _RecoverPasswordResponseDTO({final bool success}) =
      _$RecoverPasswordResponseDTOImpl;

  factory _RecoverPasswordResponseDTO.fromJson(Map<String, dynamic> json) =
      _$RecoverPasswordResponseDTOImpl.fromJson;

  @override
  bool get success;

  /// Create a copy of RecoverPasswordResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecoverPasswordResponseDTOImplCopyWith<_$RecoverPasswordResponseDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
