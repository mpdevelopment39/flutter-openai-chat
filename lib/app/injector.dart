import 'package:flutter_openai_chat/app/helpers.dart';
import 'package:get_it/get_it.dart';
import 'dio_chat.dart';

//* Clase para gestionar la inyección de dependencias del proyecto
final GetIt injector = GetIt.instance;

class Injector {
  Injector(){
    injector.allowReassignment = true;    
    injector.registerSingleton<DioChat>(DioChat());
    injector.registerLazySingleton<Helpers>(() => Helpers());
    //* MANAGERS
   
    //* REPOSITORIES
  }
}


