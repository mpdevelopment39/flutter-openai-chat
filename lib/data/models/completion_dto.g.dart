// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completion_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompletionDTOImpl _$$CompletionDTOImplFromJson(Map<String, dynamic> json) =>
    _$CompletionDTOImpl(
      choices: (json['choices'] as List<dynamic>)
          .map((e) => ChoiceDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      model: json['model'] as String,
      usage: UsageDTO.fromJson(json['usage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CompletionDTOImplToJson(_$CompletionDTOImpl instance) =>
    <String, dynamic>{
      'choices': instance.choices,
      'model': instance.model,
      'usage': instance.usage,
    };
