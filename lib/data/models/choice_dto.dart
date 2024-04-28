import 'package:freezed_annotation/freezed_annotation.dart';
import 'message_dto.dart';
part 'choice_dto.freezed.dart';
part 'choice_dto.g.dart';
@freezed
class ChoiceDTO with _$ChoiceDTO{
  const factory ChoiceDTO({
    String? finishReason,
    int? index,
    MessageDTO? message,
    dynamic logprobs,
  }) = _ChoiceDTO;
  factory ChoiceDTO.fromJson(Map<String,dynamic> json) => _$ChoiceDTOFromJson(json);
}
