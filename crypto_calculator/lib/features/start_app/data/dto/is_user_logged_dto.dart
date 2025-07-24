import 'package:freezed_annotation/freezed_annotation.dart';
part 'is_user_logged_dto.freezed.dart';
part 'is_user_logged_dto.g.dart';

@freezed
class IsUserLoggedRequestDTO with _$IsUserLoggedRequestDTO {
  const IsUserLoggedRequestDTO._();

  const factory IsUserLoggedRequestDTO({
    required String email,
    required String password,
  }) = _IsUserLoggedRequestDTO;

  factory IsUserLoggedRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$IsUserLoggedRequestDTOFromJson(json);
}

@freezed
class IsUserLoggedResponseDTO with _$IsUserLoggedResponseDTO {
  const factory IsUserLoggedResponseDTO({
    @Default(false) bool success,
  }) = _IsUserLoggedResponseDTO;

  factory IsUserLoggedResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$IsUserLoggedResponseDTOFromJson(json);
}
