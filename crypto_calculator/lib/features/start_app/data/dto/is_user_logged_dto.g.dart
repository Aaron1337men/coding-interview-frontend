// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'is_user_logged_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IsUserLoggedRequestDTOImpl _$$IsUserLoggedRequestDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$IsUserLoggedRequestDTOImpl(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$IsUserLoggedRequestDTOImplToJson(
        _$IsUserLoggedRequestDTOImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

_$IsUserLoggedResponseDTOImpl _$$IsUserLoggedResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$IsUserLoggedResponseDTOImpl(
      success: json['success'] as bool? ?? false,
    );

Map<String, dynamic> _$$IsUserLoggedResponseDTOImplToJson(
        _$IsUserLoggedResponseDTOImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
    };
