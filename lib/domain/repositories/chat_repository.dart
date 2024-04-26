import 'package:dio/dio.dart';

abstract class ChatRepository{
  Future<List<String>> getModels();
  Future<Response> getAiGeneratedResponse();
}