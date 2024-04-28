// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choice_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChoiceDTO _$ChoiceDTOFromJson(Map<String, dynamic> json) {
  return _ChoiceDTO.fromJson(json);
}

/// @nodoc
mixin _$ChoiceDTO {
  String? get finishReason => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;
  MessageDTO? get message => throw _privateConstructorUsedError;
  dynamic get logprobs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoiceDTOCopyWith<ChoiceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceDTOCopyWith<$Res> {
  factory $ChoiceDTOCopyWith(ChoiceDTO value, $Res Function(ChoiceDTO) then) =
      _$ChoiceDTOCopyWithImpl<$Res, ChoiceDTO>;
  @useResult
  $Res call(
      {String? finishReason,
      int? index,
      MessageDTO? message,
      dynamic logprobs});

  $MessageDTOCopyWith<$Res>? get message;
}

/// @nodoc
class _$ChoiceDTOCopyWithImpl<$Res, $Val extends ChoiceDTO>
    implements $ChoiceDTOCopyWith<$Res> {
  _$ChoiceDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? finishReason = freezed,
    Object? index = freezed,
    Object? message = freezed,
    Object? logprobs = freezed,
  }) {
    return _then(_value.copyWith(
      finishReason: freezed == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageDTO?,
      logprobs: freezed == logprobs
          ? _value.logprobs
          : logprobs // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageDTOCopyWith<$Res>? get message {
    if (_value.message == null) {
      return null;
    }

    return $MessageDTOCopyWith<$Res>(_value.message!, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChoiceDTOImplCopyWith<$Res>
    implements $ChoiceDTOCopyWith<$Res> {
  factory _$$ChoiceDTOImplCopyWith(
          _$ChoiceDTOImpl value, $Res Function(_$ChoiceDTOImpl) then) =
      __$$ChoiceDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? finishReason,
      int? index,
      MessageDTO? message,
      dynamic logprobs});

  @override
  $MessageDTOCopyWith<$Res>? get message;
}

/// @nodoc
class __$$ChoiceDTOImplCopyWithImpl<$Res>
    extends _$ChoiceDTOCopyWithImpl<$Res, _$ChoiceDTOImpl>
    implements _$$ChoiceDTOImplCopyWith<$Res> {
  __$$ChoiceDTOImplCopyWithImpl(
      _$ChoiceDTOImpl _value, $Res Function(_$ChoiceDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? finishReason = freezed,
    Object? index = freezed,
    Object? message = freezed,
    Object? logprobs = freezed,
  }) {
    return _then(_$ChoiceDTOImpl(
      finishReason: freezed == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageDTO?,
      logprobs: freezed == logprobs
          ? _value.logprobs
          : logprobs // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChoiceDTOImpl implements _ChoiceDTO {
  const _$ChoiceDTOImpl(
      {this.finishReason, this.index, this.message, this.logprobs});

  factory _$ChoiceDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChoiceDTOImplFromJson(json);

  @override
  final String? finishReason;
  @override
  final int? index;
  @override
  final MessageDTO? message;
  @override
  final dynamic logprobs;

  @override
  String toString() {
    return 'ChoiceDTO(finishReason: $finishReason, index: $index, message: $message, logprobs: $logprobs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoiceDTOImpl &&
            (identical(other.finishReason, finishReason) ||
                other.finishReason == finishReason) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.logprobs, logprobs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, finishReason, index, message,
      const DeepCollectionEquality().hash(logprobs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChoiceDTOImplCopyWith<_$ChoiceDTOImpl> get copyWith =>
      __$$ChoiceDTOImplCopyWithImpl<_$ChoiceDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoiceDTOImplToJson(
      this,
    );
  }
}

abstract class _ChoiceDTO implements ChoiceDTO {
  const factory _ChoiceDTO(
      {final String? finishReason,
      final int? index,
      final MessageDTO? message,
      final dynamic logprobs}) = _$ChoiceDTOImpl;

  factory _ChoiceDTO.fromJson(Map<String, dynamic> json) =
      _$ChoiceDTOImpl.fromJson;

  @override
  String? get finishReason;
  @override
  int? get index;
  @override
  MessageDTO? get message;
  @override
  dynamic get logprobs;
  @override
  @JsonKey(ignore: true)
  _$$ChoiceDTOImplCopyWith<_$ChoiceDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
