// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recover_password_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecoverPasswordRequestDtoImpl _$$RecoverPasswordRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$RecoverPasswordRequestDtoImpl(
      email: json['email'] as String,
    );

Map<String, dynamic> _$$RecoverPasswordRequestDtoImplToJson(
        _$RecoverPasswordRequestDtoImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

_$RecoverPasswordResponseDTOImpl _$$RecoverPasswordResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$RecoverPasswordResponseDTOImpl(
      success: json['success'] as bool? ?? false,
    );

Map<String, dynamic> _$$RecoverPasswordResponseDTOImplToJson(
        _$RecoverPasswordResponseDTOImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
    };
