import 'package:flutter_openai_chat/app/injector.dart';
import 'package:flutter_openai_chat/domain/repositories/chat_repository.dart';
import '../models/message.dart';

class GetAIGeneratedResponseUseCase {

  final ChatRepository _chatRepository = injector<ChatRepository>();

  Future<String> call(String model,double temperature,List<Message> messages) async {
    try{
      return await _chatRepository.getAIGeneratedResponse(model,temperature,messages);
    }catch(_){
      throw Exception();
    }
  }
}