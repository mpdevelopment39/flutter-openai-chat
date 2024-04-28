import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'notifiers/chat_notifier.dart';
import 'states/chat_state.dart';

//* Clase para gestionar los diferentes providers de la app

final chatProvider = StateNotifierProvider<ChatNotifier, ChatState>((ref) {
  return ChatNotifier(ref);
});
