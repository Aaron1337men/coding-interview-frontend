// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignInRequestDTOImpl _$$SignInRequestDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$SignInRequestDTOImpl(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$SignInRequestDTOImplToJson(
        _$SignInRequestDTOImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

_$SignInResponseDTOImpl _$$SignInResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$SignInResponseDTOImpl(
      success: json['success'] as bool? ?? false,
    );

Map<String, dynamic> _$$SignInResponseDTOImplToJson(
        _$SignInResponseDTOImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
    };
