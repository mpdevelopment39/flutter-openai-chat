// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChoiceDTOImpl _$$ChoiceDTOImplFromJson(Map<String, dynamic> json) =>
    _$ChoiceDTOImpl(
      finishReason: json['finishReason'] as String,
      index: (json['index'] as num).toInt(),
      message: MessageDTO.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChoiceDTOImplToJson(_$ChoiceDTOImpl instance) =>
    <String, dynamic>{
      'finishReason': instance.finishReason,
      'index': instance.index,
      'message': instance.message,
    };
