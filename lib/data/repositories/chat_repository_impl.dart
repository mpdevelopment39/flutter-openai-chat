import 'package:dio/dio.dart';
import 'package:flutter_openai_chat/app/dio_chat.dart';
import 'package:flutter_openai_chat/app/injector.dart';
import 'package:flutter_openai_chat/data/models/completion_dto.dart';
import 'package:flutter_openai_chat/domain/repositories/chat_repository.dart';

import '../../domain/models/message.dart';
import '../models/choice_dto.dart';

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
        final CompletionDTO completionDTO = CompletionDTO.fromJson(response.data);
        String? content = completionDTO.choices?.firstOrNull?.message?.content;
        if(content == null) throw Exception('No content');
        return content;
      }else{
        throw Exception('statusCode = ${response.statusCode}');
      }
    }catch(e){
      throw Exception(e);
    }
  }

}