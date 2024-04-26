import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_openai_chat/app/injector.dart';
import 'package:flutter_openai_chat/app/theme.dart';
import 'package:flutter_openai_chat/ui/pages/chat_page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  //* Leemos las variables de entorno para poder hacer uso de ellas en todo el proyecto
  await dotenv.load();
  //* Inyectamos dependencias 
  Injector();
  
  //* Seteamos la orientación del dispositivo por defecto vertical.
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  
  //* Utilizamos el paquete de device_preview para poder hacer pruebas de interfaz en cualquier dispositivo
  runApp(DevicePreview(
    enabled: false, //!kReleaseMode,
    builder: (context) => const ProviderScope(child:MyApp())),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppTheme.colorBackground,
        appBarTheme: const AppBarTheme(color: Color.fromRGBO(247, 246, 252, 1)),
        useMaterial3: true,
      ),
      home: const ChatPage(),
    );
  }
}

//TODO Añadir icono
//TODO Añadir splash
//