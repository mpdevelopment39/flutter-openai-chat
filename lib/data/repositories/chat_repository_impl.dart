import 'package:dio/dio.dart';
import 'package:flutter_openai_chat/app/dio_chat.dart';
import 'package:flutter_openai_chat/app/injector.dart';
import 'package:flutter_openai_chat/domain/repositories/chat_repository.dart';

import '../../domain/models/message.dart';

class ChatRepositoryImpl implements ChatRepository{
  final Dio _dioChat = injector<DioChat>().dio;

  @override
  Future<Response> getAIGeneratedResponse(String model,double temperature,List<Message> messages) async {
    return _dioChat.post('chat/completions',data: {
      'model' : model,
      'temperature' : temperature,
      'messages' : messages
    });
  }

}