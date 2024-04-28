// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageDTOImpl _$$MessageDTOImplFromJson(Map<String, dynamic> json) =>
    _$MessageDTOImpl(
      content: json['content'] as String?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$$MessageDTOImplToJson(_$MessageDTOImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'role': instance.role,
    };
