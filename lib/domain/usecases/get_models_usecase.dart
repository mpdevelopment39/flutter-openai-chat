
import 'package:flutter_openai_chat/app/injector.dart';
import 'package:flutter_openai_chat/domain/repositories/chat_repository.dart';

class GetModelsUseCase {

  final ChatRepository _chatRepository = injector<ChatRepository>();

  Future<List<String>> call() async {
    try{
      return _chatRepository.getModels();
    }catch(_){
      return [];
    }
    
  }

}