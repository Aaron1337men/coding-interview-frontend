import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_dto.freezed.dart';
part 'sign_up_dto.g.dart';

@freezed
class SignUpRequestDTO with _$SignUpRequestDTO {
  const SignUpRequestDTO._();

  const factory SignUpRequestDTO({
    required String email,
    required String password,
    String? name,
    String? givenName,
  }) = _SignUpRequestDTO;

  factory SignUpRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestDTOFromJson(json);
}

@freezed
class SignUpResponseDTO with _$SignUpResponseDTO {
  const factory SignUpResponseDTO({
    @Default(false) bool success,
  }) = _SignUpResponseDTO;

  factory SignUpResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseDTOFromJson(json);
}
