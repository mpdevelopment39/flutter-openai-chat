import 'package:freezed_annotation/freezed_annotation.dart';
import 'choice_dto.dart';
import 'usage_dto.dart';
part 'completion_dto.freezed.dart';
part 'completion_dto.g.dart';
@freezed
class CompletionDTO with _$CompletionDTO{
  const factory CompletionDTO({
    required List<ChoiceDTO> choices,
    required String model,
    required UsageDTO usage
  }) = _CompletionDTO;
  factory CompletionDTO.fromJson(Map<String,dynamic> json) => _$CompletionDTOFromJson(json);
}
