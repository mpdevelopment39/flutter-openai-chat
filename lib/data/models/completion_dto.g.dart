// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completion_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompletionDTOImpl _$$CompletionDTOImplFromJson(Map<String, dynamic> json) =>
    _$CompletionDTOImpl(
      model: json['model'] as String,
      choices: (json['choices'] as List<dynamic>)
          .map((e) => ChoiceDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CompletionDTOImplToJson(_$CompletionDTOImpl instance) =>
    <String, dynamic>{
      'model': instance.model,
      'choices': instance.choices,
    };
