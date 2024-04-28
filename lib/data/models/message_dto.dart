import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_dto.freezed.dart';
part 'message_dto.g.dart';
@freezed
class MessageDTO with _$MessageDTO{
  const factory MessageDTO({
    String? content,
    String? role,
  }) = _MessageDTO;
  factory MessageDTO.fromJson(Map<String,dynamic> json) => _$MessageDTOFromJson(json);
}

