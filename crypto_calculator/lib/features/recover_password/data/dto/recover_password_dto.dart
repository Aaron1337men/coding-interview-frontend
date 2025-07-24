import 'package:freezed_annotation/freezed_annotation.dart';
part 'recover_password_dto.freezed.dart';
part 'recover_password_dto.g.dart';

@freezed
class RecoverPasswordRequestDto with _$RecoverPasswordRequestDto {
  const RecoverPasswordRequestDto._();

  const factory RecoverPasswordRequestDto({
    required String email,
  }) = _RecoverPasswordRequestDto;

  factory RecoverPasswordRequestDto.fromJson(Map<String, dynamic> json) =>
      _$RecoverPasswordRequestDtoFromJson(json);
}

@freezed
class RecoverPasswordResponseDTO with _$RecoverPasswordResponseDTO {
  const factory RecoverPasswordResponseDTO({
    @Default(false) bool success,
  }) = _RecoverPasswordResponseDTO;

  factory RecoverPasswordResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$RecoverPasswordResponseDTOFromJson(json);
}