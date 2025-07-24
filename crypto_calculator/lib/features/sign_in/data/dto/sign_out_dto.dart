import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_out_dto.freezed.dart';
part 'sign_out_dto.g.dart';

@freezed
class SignOutResponseDTO with _$SignOutResponseDTO {
  const factory SignOutResponseDTO({
    @Default(false) bool success,
  }) = _SignOutResponseDTO;

  factory SignOutResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$SignOutResponseDTOFromJson(json);
}
