import 'package:freezed_annotation/freezed_annotation.dart';
import 'message_dto.dart';
part 'choice_dto.freezed.dart';
part 'choice_dto.g.dart';
@freezed
class ChoiceDTO with _$ChoiceDTO{
  const factory ChoiceDTO({
    required String finishReason,
    required int index,
    required MessageDTO message
  }) = _ChoiceDTO;
  factory ChoiceDTO.fromJson(Map<String,dynamic> json) => _$ChoiceDTOFromJson(json);
}
