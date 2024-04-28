// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageDTO _$MessageDTOFromJson(Map<String, dynamic> json) {
  return _MessageDTO.fromJson(json);
}

/// @nodoc
mixin _$MessageDTO {
  String? get content => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageDTOCopyWith<MessageDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageDTOCopyWith<$Res> {
  factory $MessageDTOCopyWith(
          MessageDTO value, $Res Function(MessageDTO) then) =
      _$MessageDTOCopyWithImpl<$Res, MessageDTO>;
  @useResult
  $Res call({String? content, String? role});
}

/// @nodoc
class _$MessageDTOCopyWithImpl<$Res, $Val extends MessageDTO>
    implements $MessageDTOCopyWith<$Res> {
  _$MessageDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageDTOImplCopyWith<$Res>
    implements $MessageDTOCopyWith<$Res> {
  factory _$$MessageDTOImplCopyWith(
          _$MessageDTOImpl value, $Res Function(_$MessageDTOImpl) then) =
      __$$MessageDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? content, String? role});
}

/// @nodoc
class __$$MessageDTOImplCopyWithImpl<$Res>
    extends _$MessageDTOCopyWithImpl<$Res, _$MessageDTOImpl>
    implements _$$MessageDTOImplCopyWith<$Res> {
  __$$MessageDTOImplCopyWithImpl(
      _$MessageDTOImpl _value, $Res Function(_$MessageDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? role = freezed,
  }) {
    return _then(_$MessageDTOImpl(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageDTOImpl implements _MessageDTO {
  const _$MessageDTOImpl({this.content, this.role});

  factory _$MessageDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageDTOImplFromJson(json);

  @override
  final String? content;
  @override
  final String? role;

  @override
  String toString() {
    return 'MessageDTO(content: $content, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageDTOImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageDTOImplCopyWith<_$MessageDTOImpl> get copyWith =>
      __$$MessageDTOImplCopyWithImpl<_$MessageDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageDTOImplToJson(
      this,
    );
  }
}

abstract class _MessageDTO implements MessageDTO {
  const factory _MessageDTO({final String? content, final String? role}) =
      _$MessageDTOImpl;

  factory _MessageDTO.fromJson(Map<String, dynamic> json) =
      _$MessageDTOImpl.fromJson;

  @override
  String? get content;
  @override
  String? get role;
  @override
  @JsonKey(ignore: true)
  _$$MessageDTOImplCopyWith<_$MessageDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
