import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../states/settings_state.dart';

class SettingsNotifier extends StateNotifier<SettingsState> {
  Ref ref;
  
  SettingsNotifier(this.ref) : super(const SettingsState());
  
  Future<void> updateModel(String modelSelected) async {
    SettingsState userSettings = state;
    state = userSettings.copyWith(model: modelSelected);
  }

  Future<void> updateTemperature(double temperatureSelected) async {
    SettingsState userSettings = state;
    state = userSettings.copyWith(temperature: temperatureSelected);
  }

}
