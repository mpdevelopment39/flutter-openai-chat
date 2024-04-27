// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsState {
  String get model => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;
  List<MessageWidget> get widgets => throw _privateConstructorUsedError;
  List<Message> get messages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call(
      {String model,
      double temperature,
      List<MessageWidget> widgets,
      List<Message> messages});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? temperature = null,
    Object? widgets = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      widgets: null == widgets
          ? _value.widgets
          : widgets // ignore: cast_nullable_to_non_nullable
              as List<MessageWidget>,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingsStateImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsStateImplCopyWith(
          _$SettingsStateImpl value, $Res Function(_$SettingsStateImpl) then) =
      __$$SettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String model,
      double temperature,
      List<MessageWidget> widgets,
      List<Message> messages});
}

/// @nodoc
class __$$SettingsStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsStateImpl>
    implements _$$SettingsStateImplCopyWith<$Res> {
  __$$SettingsStateImplCopyWithImpl(
      _$SettingsStateImpl _value, $Res Function(_$SettingsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? temperature = null,
    Object? widgets = null,
    Object? messages = null,
  }) {
    return _then(_$SettingsStateImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      widgets: null == widgets
          ? _value.widgets
          : widgets // ignore: cast_nullable_to_non_nullable
              as List<MessageWidget>,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc

class _$SettingsStateImpl implements _SettingsState {
  const _$SettingsStateImpl(
      {this.model = 'gpt-3.5-turbo',
      this.temperature = 0.5,
      this.widgets = const [],
      this.messages = const []});

  @override
  @JsonKey()
  final String model;
  @override
  @JsonKey()
  final double temperature;
  @override
  @JsonKey()
  final List<MessageWidget> widgets;
  @override
  @JsonKey()
  final List<Message> messages;

  @override
  String toString() {
    return 'SettingsState(model: $model, temperature: $temperature, widgets: $widgets, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsStateImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            const DeepCollectionEquality().equals(other.widgets, widgets) &&
            const DeepCollectionEquality().equals(other.messages, messages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      model,
      temperature,
      const DeepCollectionEquality().hash(widgets),
      const DeepCollectionEquality().hash(messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      __$$SettingsStateImplCopyWithImpl<_$SettingsStateImpl>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState(
      {final String model,
      final double temperature,
      final List<MessageWidget> widgets,
      final List<Message> messages}) = _$SettingsStateImpl;

  @override
  String get model;
  @override
  double get temperature;
  @override
  List<MessageWidget> get widgets;
  @override
  List<Message> get messages;
  @override
  @JsonKey(ignore: true)
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
