// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usage_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsageDTOImpl _$$UsageDTOImplFromJson(Map<String, dynamic> json) =>
    _$UsageDTOImpl(
      completionTokens: (json['completionTokens'] as num?)?.toInt(),
      promptTokens: (json['promptTokens'] as num?)?.toInt(),
      totalTokens: (json['totalTokens'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UsageDTOImplToJson(_$UsageDTOImpl instance) =>
    <String, dynamic>{
      'completionTokens': instance.completionTokens,
      'promptTokens': instance.promptTokens,
      'totalTokens': instance.totalTokens,
    };
