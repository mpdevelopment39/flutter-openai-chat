import '../models/message.dart';

abstract class ChatRepository{
  Future<String> getAIGeneratedResponse(String model,double temperature,List<Message> messages);
}