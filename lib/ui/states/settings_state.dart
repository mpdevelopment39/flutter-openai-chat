import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.freezed.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default('gpt-3.5-turbo') String model,
    @Default(0.5) double temperature
  }) = _SettingsState;
}
