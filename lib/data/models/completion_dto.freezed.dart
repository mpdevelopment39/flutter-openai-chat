// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'completion_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompletionDTO _$CompletionDTOFromJson(Map<String, dynamic> json) {
  return _CompletionDTO.fromJson(json);
}

/// @nodoc
mixin _$CompletionDTO {
  List<ChoiceDTO>? get choices => throw _privateConstructorUsedError;
  int? get created => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get model => throw _privateConstructorUsedError;
  UsageDTO? get usage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompletionDTOCopyWith<CompletionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletionDTOCopyWith<$Res> {
  factory $CompletionDTOCopyWith(
          CompletionDTO value, $Res Function(CompletionDTO) then) =
      _$CompletionDTOCopyWithImpl<$Res, CompletionDTO>;
  @useResult
  $Res call(
      {List<ChoiceDTO>? choices,
      int? created,
      String? id,
      String? model,
      UsageDTO? usage});

  $UsageDTOCopyWith<$Res>? get usage;
}

/// @nodoc
class _$CompletionDTOCopyWithImpl<$Res, $Val extends CompletionDTO>
    implements $CompletionDTOCopyWith<$Res> {
  _$CompletionDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? choices = freezed,
    Object? created = freezed,
    Object? id = freezed,
    Object? model = freezed,
    Object? usage = freezed,
  }) {
    return _then(_value.copyWith(
      choices: freezed == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChoiceDTO>?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      usage: freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as UsageDTO?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UsageDTOCopyWith<$Res>? get usage {
    if (_value.usage == null) {
      return null;
    }

    return $UsageDTOCopyWith<$Res>(_value.usage!, (value) {
      return _then(_value.copyWith(usage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompletionDTOImplCopyWith<$Res>
    implements $CompletionDTOCopyWith<$Res> {
  factory _$$CompletionDTOImplCopyWith(
          _$CompletionDTOImpl value, $Res Function(_$CompletionDTOImpl) then) =
      __$$CompletionDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ChoiceDTO>? choices,
      int? created,
      String? id,
      String? model,
      UsageDTO? usage});

  @override
  $UsageDTOCopyWith<$Res>? get usage;
}

/// @nodoc
class __$$CompletionDTOImplCopyWithImpl<$Res>
    extends _$CompletionDTOCopyWithImpl<$Res, _$CompletionDTOImpl>
    implements _$$CompletionDTOImplCopyWith<$Res> {
  __$$CompletionDTOImplCopyWithImpl(
      _$CompletionDTOImpl _value, $Res Function(_$CompletionDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? choices = freezed,
    Object? created = freezed,
    Object? id = freezed,
    Object? model = freezed,
    Object? usage = freezed,
  }) {
    return _then(_$CompletionDTOImpl(
      choices: freezed == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChoiceDTO>?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      usage: freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as UsageDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompletionDTOImpl implements _CompletionDTO {
  const _$CompletionDTOImpl(
      {final List<ChoiceDTO>? choices,
      this.created,
      this.id,
      this.model,
      this.usage})
      : _choices = choices;

  factory _$CompletionDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompletionDTOImplFromJson(json);

  final List<ChoiceDTO>? _choices;
  @override
  List<ChoiceDTO>? get choices {
    final value = _choices;
    if (value == null) return null;
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? created;
  @override
  final String? id;
  @override
  final String? model;
  @override
  final UsageDTO? usage;

  @override
  String toString() {
    return 'CompletionDTO(choices: $choices, created: $created, id: $id, model: $model, usage: $usage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletionDTOImpl &&
            const DeepCollectionEquality().equals(other._choices, _choices) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.usage, usage) || other.usage == usage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_choices), created, id, model, usage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletionDTOImplCopyWith<_$CompletionDTOImpl> get copyWith =>
      __$$CompletionDTOImplCopyWithImpl<_$CompletionDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompletionDTOImplToJson(
      this,
    );
  }
}

abstract class _CompletionDTO implements CompletionDTO {
  const factory _CompletionDTO(
      {final List<ChoiceDTO>? choices,
      final int? created,
      final String? id,
      final String? model,
      final UsageDTO? usage}) = _$CompletionDTOImpl;

  factory _CompletionDTO.fromJson(Map<String, dynamic> json) =
      _$CompletionDTOImpl.fromJson;

  @override
  List<ChoiceDTO>? get choices;
  @override
  int? get created;
  @override
  String? get id;
  @override
  String? get model;
  @override
  UsageDTO? get usage;
  @override
  @JsonKey(ignore: true)
  _$$CompletionDTOImplCopyWith<_$CompletionDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
