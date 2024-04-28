import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/models/message.dart';
import '../widgets/message_widget.dart';
part 'chat_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class ChatState with _$ChatState {
  const factory ChatState({
    @Default('gpt-3.5-turbo') String model,
    @Default(0.5) double temperature,
    @Default([]) List<MessageWidget> widgets,
    @Default([]) List<Message> messages
  }) = _ChatState;
}
