import 'package:flutter_openai_chat/domain/models/message.dart';
import 'package:flutter_openai_chat/domain/usecases/get_ai_generated_response_usecase.dart';
import 'package:flutter_openai_chat/ui/widgets/message_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../app/injector.dart';
import '../states/chat_state.dart';

//* Clase para gestionar la lógica asociada al chat
class ChatNotifier extends StateNotifier<ChatState> {
  Ref ref;
  ChatNotifier(this.ref) : super(const ChatState());
  
  Future<bool> resetSettings() async {
    try{
      state = const ChatState();
      return true;
    }catch(_){return false;}
  }
  
  Future<void> updateModel(String modelSelected) async {
    ChatState chatState = state;
    state = chatState.copyWith(model: modelSelected);
  }

  Future<void> updateTemperature(double temperatureSelected) async {
    ChatState chatState = state;
    state = chatState.copyWith(temperature: temperatureSelected);
  }

  Future<void> addNewMessage(MessageWidget newMessage) async {
    List<MessageWidget> allWidgets = List<MessageWidget>.empty(growable: true);
    List<Message> allMessages = List<Message>.empty(growable: true);
    allWidgets = state.widgets.toList();
    allMessages = state.messages.toList();
    int index = allWidgets.indexWhere((m) => m.isWriting);
    if(index != -1) allWidgets.removeAt(index);
    if(newMessage.userType == UserType.assistant){
      allWidgets.add(newMessage);
      state = state.copyWith(widgets: allWidgets);
    }else{
      allMessages.add(Message(role: 'user', content: newMessage.text));
      allWidgets.add(newMessage);
      state = state.copyWith(widgets: allWidgets,messages: allMessages);
      allWidgets.add(const MessageWidget(text: '', userType: UserType.assistant,isWriting: true));
      state = state.copyWith(widgets: allWidgets);
      try{
        String messageResponse = await injector<GetAIGeneratedResponseUseCase>().call(state.model,state.temperature,allMessages);
        List<MessageWidget> newWidgets = state.widgets.toList();
        newWidgets.removeWhere((m) => m.isWriting);
        allMessages.add(Message(role: 'assistant', content: messageResponse));
        newWidgets.add(MessageWidget(text: messageResponse, userType: UserType.assistant));
        state = state.copyWith(widgets: newWidgets,messages: allMessages);
      }catch(_){
        List<MessageWidget> newWidgets = state.widgets.toList();
        newWidgets.removeWhere((m) => m.isWriting);
        state = state.copyWith(widgets: newWidgets);
        throw Exception();
      }
    }
  }

}
