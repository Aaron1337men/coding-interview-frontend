// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpRequestDTOImpl _$$SignUpRequestDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$SignUpRequestDTOImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      name: json['name'] as String?,
      givenName: json['givenName'] as String?,
    );

Map<String, dynamic> _$$SignUpRequestDTOImplToJson(
        _$SignUpRequestDTOImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'name': instance.name,
      'givenName': instance.givenName,
    };

_$SignUpResponseDTOImpl _$$SignUpResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$SignUpResponseDTOImpl(
      success: json['success'] as bool? ?? false,
    );

Map<String, dynamic> _$$SignUpResponseDTOImplToJson(
        _$SignUpResponseDTOImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
    };
