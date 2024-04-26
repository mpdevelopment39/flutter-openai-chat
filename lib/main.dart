import 'package:flutter/material.dart';
import 'package:flutter_openai_chat/ui/pages/chat_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(247, 246, 252, 1),
        appBarTheme: const AppBarTheme(color: Color.fromRGBO(247, 246, 252, 1)),
        useMaterial3: true,
      ),
      home: const ChatPage(),
    );
  }
}
