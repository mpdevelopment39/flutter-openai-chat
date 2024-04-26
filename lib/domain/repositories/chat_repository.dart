import 'package:dio/dio.dart';

import '../models/message.dart';

abstract class ChatRepository{
  Future<Response> getAIGeneratedResponse(String model,double temperature,List<Message> messages);
}