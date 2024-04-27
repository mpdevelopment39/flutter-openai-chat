import 'package:dio/dio.dart';
import 'package:flutter_openai_chat/app/dio_chat.dart';
import 'package:flutter_openai_chat/app/injector.dart';
import 'package:flutter_openai_chat/domain/repositories/chat_repository.dart';

import '../../domain/models/message.dart';

class ChatRepositoryImpl implements ChatRepository{
  final Dio _dioChat = injector<DioChat>().dio;

  @override
  Future<String> getAIGeneratedResponse(String model,double temperature,List<Message> messages) async {
    try{
      Response response = await _dioChat.post('chat/completions',data: {
        'model' : model,
        'temperature' : temperature,
        'messages' : messages
      });
      if(response.statusCode == 200){
        //TODO VER COMO IMPLEMENTAR ESTA PARTE CORRECTAMENTE
        //print("MIGUEL DATA = ${response.data}");
        //List<ChoiceDTO> choices = response.data['choices'].map((e) => ChoiceDTO.fromJson(e)).toList().cast<ChoiceDTO>();
        return response.data['choices'][0]['message']['content'];
        /* CompletionDTO completionDTO = CompletionDTO.fromJson(response.data);
        return completionDTO.choices.first.message.content; */
      }else{
        throw Exception('statusCode = ${response.statusCode}');
      }
    }catch(e){
      throw Exception(e);
    }
    
  }

}