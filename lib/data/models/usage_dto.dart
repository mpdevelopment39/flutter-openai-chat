import 'package:freezed_annotation/freezed_annotation.dart';

part 'usage_dto.freezed.dart';
part 'usage_dto.g.dart';
@freezed
class UsageDTO with _$UsageDTO{
  const factory UsageDTO({
    required int completionTokens,
    required int promptTokens,
    required int totalTokens,
  }) = _UsageDTO;
  factory UsageDTO.fromJson(Map<String,dynamic> json) => _$UsageDTOFromJson(json);
}

