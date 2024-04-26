// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usage_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UsageDTO _$UsageDTOFromJson(Map<String, dynamic> json) {
  return _UsageDTO.fromJson(json);
}

/// @nodoc
mixin _$UsageDTO {
  int get completionTokens => throw _privateConstructorUsedError;
  int get promptTokens => throw _privateConstructorUsedError;
  int get totalTokens => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsageDTOCopyWith<UsageDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsageDTOCopyWith<$Res> {
  factory $UsageDTOCopyWith(UsageDTO value, $Res Function(UsageDTO) then) =
      _$UsageDTOCopyWithImpl<$Res, UsageDTO>;
  @useResult
  $Res call({int completionTokens, int promptTokens, int totalTokens});
}

/// @nodoc
class _$UsageDTOCopyWithImpl<$Res, $Val extends UsageDTO>
    implements $UsageDTOCopyWith<$Res> {
  _$UsageDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completionTokens = null,
    Object? promptTokens = null,
    Object? totalTokens = null,
  }) {
    return _then(_value.copyWith(
      completionTokens: null == completionTokens
          ? _value.completionTokens
          : completionTokens // ignore: cast_nullable_to_non_nullable
              as int,
      promptTokens: null == promptTokens
          ? _value.promptTokens
          : promptTokens // ignore: cast_nullable_to_non_nullable
              as int,
      totalTokens: null == totalTokens
          ? _value.totalTokens
          : totalTokens // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsageDTOImplCopyWith<$Res>
    implements $UsageDTOCopyWith<$Res> {
  factory _$$UsageDTOImplCopyWith(
          _$UsageDTOImpl value, $Res Function(_$UsageDTOImpl) then) =
      __$$UsageDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int completionTokens, int promptTokens, int totalTokens});
}

/// @nodoc
class __$$UsageDTOImplCopyWithImpl<$Res>
    extends _$UsageDTOCopyWithImpl<$Res, _$UsageDTOImpl>
    implements _$$UsageDTOImplCopyWith<$Res> {
  __$$UsageDTOImplCopyWithImpl(
      _$UsageDTOImpl _value, $Res Function(_$UsageDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completionTokens = null,
    Object? promptTokens = null,
    Object? totalTokens = null,
  }) {
    return _then(_$UsageDTOImpl(
      completionTokens: null == completionTokens
          ? _value.completionTokens
          : completionTokens // ignore: cast_nullable_to_non_nullable
              as int,
      promptTokens: null == promptTokens
          ? _value.promptTokens
          : promptTokens // ignore: cast_nullable_to_non_nullable
              as int,
      totalTokens: null == totalTokens
          ? _value.totalTokens
          : totalTokens // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsageDTOImpl implements _UsageDTO {
  const _$UsageDTOImpl(
      {required this.completionTokens,
      required this.promptTokens,
      required this.totalTokens});

  factory _$UsageDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsageDTOImplFromJson(json);

  @override
  final int completionTokens;
  @override
  final int promptTokens;
  @override
  final int totalTokens;

  @override
  String toString() {
    return 'UsageDTO(completionTokens: $completionTokens, promptTokens: $promptTokens, totalTokens: $totalTokens)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsageDTOImpl &&
            (identical(other.completionTokens, completionTokens) ||
                other.completionTokens == completionTokens) &&
            (identical(other.promptTokens, promptTokens) ||
                other.promptTokens == promptTokens) &&
            (identical(other.totalTokens, totalTokens) ||
                other.totalTokens == totalTokens));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, completionTokens, promptTokens, totalTokens);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsageDTOImplCopyWith<_$UsageDTOImpl> get copyWith =>
      __$$UsageDTOImplCopyWithImpl<_$UsageDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsageDTOImplToJson(
      this,
    );
  }
}

abstract class _UsageDTO implements UsageDTO {
  const factory _UsageDTO(
      {required final int completionTokens,
      required final int promptTokens,
      required final int totalTokens}) = _$UsageDTOImpl;

  factory _UsageDTO.fromJson(Map<String, dynamic> json) =
      _$UsageDTOImpl.fromJson;

  @override
  int get completionTokens;
  @override
  int get promptTokens;
  @override
  int get totalTokens;
  @override
  @JsonKey(ignore: true)
  _$$UsageDTOImplCopyWith<_$UsageDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
