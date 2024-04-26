import 'package:flutter_openai_chat/app/helpers.dart';
import 'package:flutter_openai_chat/data/repositories/chat_repository_impl.dart';
import 'package:flutter_openai_chat/domain/repositories/chat_repository.dart';
import 'package:flutter_openai_chat/ui/ui_utils.dart';
import 'package:get_it/get_it.dart';
import '../domain/usecases/get_ai_generated_response_usecase.dart';
import 'dio_chat.dart';

//* Clase para gestionar la inyección de dependencias del proyecto
final GetIt injector = GetIt.instance;

class Injector {
  Injector(){
    injector.allowReassignment = true;
    injector.registerSingleton<DioChat>(DioChat());
    injector.registerLazySingleton<Helpers>(() => Helpers());
    injector.registerLazySingleton<UiUtils>(() => UiUtils());
    //* USECASES
    injector.registerLazySingleton<GetAIGeneratedResponseUseCase>(() => GetAIGeneratedResponseUseCase());
    //* REPOSITORIES
    injector.registerLazySingleton<ChatRepository>(() => ChatRepositoryImpl());
  }
}


