// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_out_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignOutResponseDTO _$SignOutResponseDTOFromJson(Map<String, dynamic> json) {
  return _SignOutResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$SignOutResponseDTO {
  bool get success => throw _privateConstructorUsedError;

  /// Serializes this SignOutResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignOutResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignOutResponseDTOCopyWith<SignOutResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignOutResponseDTOCopyWith<$Res> {
  factory $SignOutResponseDTOCopyWith(
          SignOutResponseDTO value, $Res Function(SignOutResponseDTO) then) =
      _$SignOutResponseDTOCopyWithImpl<$Res, SignOutResponseDTO>;
  @useResult
  $Res call({bool success});
}

/// @nodoc
class _$SignOutResponseDTOCopyWithImpl<$Res, $Val extends SignOutResponseDTO>
    implements $SignOutResponseDTOCopyWith<$Res> {
  _$SignOutResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignOutResponseDTO
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
abstract class _$$SignOutResponseDTOImplCopyWith<$Res>
    implements $SignOutResponseDTOCopyWith<$Res> {
  factory _$$SignOutResponseDTOImplCopyWith(_$SignOutResponseDTOImpl value,
          $Res Function(_$SignOutResponseDTOImpl) then) =
      __$$SignOutResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success});
}

/// @nodoc
class __$$SignOutResponseDTOImplCopyWithImpl<$Res>
    extends _$SignOutResponseDTOCopyWithImpl<$Res, _$SignOutResponseDTOImpl>
    implements _$$SignOutResponseDTOImplCopyWith<$Res> {
  __$$SignOutResponseDTOImplCopyWithImpl(_$SignOutResponseDTOImpl _value,
      $Res Function(_$SignOutResponseDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignOutResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_$SignOutResponseDTOImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignOutResponseDTOImpl implements _SignOutResponseDTO {
  const _$SignOutResponseDTOImpl({this.success = false});

  factory _$SignOutResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignOutResponseDTOImplFromJson(json);

  @override
  @JsonKey()
  final bool success;

  @override
  String toString() {
    return 'SignOutResponseDTO(success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignOutResponseDTOImpl &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success);

  /// Create a copy of SignOutResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignOutResponseDTOImplCopyWith<_$SignOutResponseDTOImpl> get copyWith =>
      __$$SignOutResponseDTOImplCopyWithImpl<_$SignOutResponseDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignOutResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _SignOutResponseDTO implements SignOutResponseDTO {
  const factory _SignOutResponseDTO({final bool success}) =
      _$SignOutResponseDTOImpl;

  factory _SignOutResponseDTO.fromJson(Map<String, dynamic> json) =
      _$SignOutResponseDTOImpl.fromJson;

  @override
  bool get success;

  /// Create a copy of SignOutResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignOutResponseDTOImplCopyWith<_$SignOutResponseDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
