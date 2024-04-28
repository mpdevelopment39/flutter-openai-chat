import 'package:flutter_openai_chat/data/models/usage_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'choice_dto.dart';
part 'completion_dto.freezed.dart';
part 'completion_dto.g.dart';
@freezed
class CompletionDTO with _$CompletionDTO{
  const factory CompletionDTO({
    List<ChoiceDTO>? choices,
    int? created,
    String? id,
    String? model,
    UsageDTO? usage,
  }) = _CompletionDTO;
  factory CompletionDTO.fromJson(Map<String,dynamic> json) => _$CompletionDTOFromJson(json);
}
