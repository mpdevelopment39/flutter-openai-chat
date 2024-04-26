import 'package:dio/dio.dart';
import 'package:flutter_openai_chat/domain/models/message.dart';
import 'package:flutter_openai_chat/domain/usecases/get_ai_generated_response_usecase.dart';
import 'package:flutter_openai_chat/ui/widgets/message_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/injector.dart';
import '../states/settings_state.dart';

class SettingsNotifier extends StateNotifier<SettingsState> {
  Ref ref;
  
  SettingsNotifier(this.ref) : super(const SettingsState());
  
  GetAIGeneratedResponseUseCase getAIGeneratedResponseUseCase = injector<GetAIGeneratedResponseUseCase>();

  Future<bool> resetSettings() async {
    try{
      state = const SettingsState();
      return true;
    }catch(_){ return false;}
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
    if(newMessage.userType == UserType.assistant){
      allMessages.add(newMessage);
      state = userSettings.copyWith(messages: allMessages);
    }else{
      allMessages.add(newMessage);
      state = userSettings.copyWith(messages: allMessages);
      allMessages.add(const MessageWidget(text: '', userType: UserType.assistant,isWriting: true));
      Response response = await getAIGeneratedResponseUseCase(state.model,state.temperature,_getMessages());
      print("MIGUEL RESPONSE $response");
    }
  }

  List<Message> _getMessages(){
    List<Message> messages = [];
    for (MessageWidget m in state.messages) { 
      messages.add(
        Message(
          role: m.userType == UserType.assistant ? 'assistant' : 'user', 
          content: m.text)
        );
    }
    return messages;
  }

}
