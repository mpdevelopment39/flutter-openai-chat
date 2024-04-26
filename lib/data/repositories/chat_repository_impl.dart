import 'package:dio/dio.dart';
import 'package:flutter_openai_chat/app/dio_chat.dart';
import 'package:flutter_openai_chat/app/injector.dart';
import 'package:flutter_openai_chat/domain/repositories/chat_repository.dart';

class ChatRepositoryImpl implements ChatRepository{
  final Dio _dioChat = injector<DioChat>().dio;

  @override
  Future<Response> getAiGeneratedResponse() async {
    return _dioChat.post('chat/completions');
  }

  @override
  Future<List<String>> getModels() async  {
     try {
      Response response = await _dioChat.get('models');
      if (response.statusCode == 200) {
        return response.data['data'].map<String>((model) => model['id'].toString()).toList();
      } else {
        throw Exception('Failed to load models');
      }
    } catch (e) {
      throw Exception('Exception getModels() : $e');
    }
  }

}