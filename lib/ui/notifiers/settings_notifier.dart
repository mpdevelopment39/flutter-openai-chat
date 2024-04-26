import 'package:flutter_openai_chat/ui/widgets/message_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../states/settings_state.dart';

class SettingsNotifier extends StateNotifier<SettingsState> {
  Ref ref;
  
  SettingsNotifier(this.ref) : super(const SettingsState());
  
  Future<void> resetSettings() async {
    state = const SettingsState();
  }

  
  Future<void> updateModel(String modelSelected) async {
    SettingsState userSettings = state;
    state = userSettings.copyWith(model: modelSelected);
  }

  Future<void> updateTemperature(double temperatureSelected) async {
    SettingsState userSettings = state;
    state = userSettings.copyWith(temperature: temperatureSelected);
  }

  Future<void> addNewMessage(MessageWidget newMessage) async {
    SettingsState userSettings = state;
    List<MessageWidget> allMessages = List<MessageWidget>.empty(growable: true);
    for (MessageWidget m in state.messages) {
      allMessages.add(m);
    }
    int index = allMessages.indexWhere((m) => m.isWriting);
    if(index != -1){
      allMessages.removeAt(index);
    }
    allMessages.add(newMessage);
    state = userSettings.copyWith(messages: allMessages);
  }

}
