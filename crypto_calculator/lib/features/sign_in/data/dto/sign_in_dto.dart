import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_in_dto.freezed.dart';
part 'sign_in_dto.g.dart';

@freezed
class SignInRequestDTO with _$SignInRequestDTO {
  const SignInRequestDTO._();

  const factory SignInRequestDTO({
    required String email,
    required String password,
  }) = _SignInRequestDTO;

  factory SignInRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$SignInRequestDTOFromJson(json);
}

@freezed
class SignInResponseDTO with _$SignInResponseDTO {
  const factory SignInResponseDTO({
    @Default(false) bool success,
  }) = _SignInResponseDTO;

  factory SignInResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseDTOFromJson(json);
}
