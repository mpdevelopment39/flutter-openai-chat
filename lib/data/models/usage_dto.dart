import 'package:freezed_annotation/freezed_annotation.dart';

part 'usage_dto.freezed.dart';
part 'usage_dto.g.dart';
@freezed
class UsageDTO with _$UsageDTO{
  const factory UsageDTO({
    int? completionTokens,
    int? promptTokens,
    int? totalTokens,
  }) = _UsageDTO;
  factory UsageDTO.fromJson(Map<String,dynamic> json) => _$UsageDTOFromJson(json);
}

