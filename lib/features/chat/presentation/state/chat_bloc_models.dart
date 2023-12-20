part of 'chat_bloc.dart';

@freezed
sealed class ChatEvent with _$ChatEvent {
  const factory ChatEvent.init(String roomId) = _InitChat;
  const factory ChatEvent.update(List<MessageEntity> messageList) = _UpdateChat;
  const factory ChatEvent.sendMessage(SendMessageParams params) = _SendMessage;
}

@freezed
class ChatState with _$ChatState {
  const factory ChatState({required List<MessageEntity> messageList}) =
      _ChatState;

  factory ChatState.empty() {
    return const ChatState(messageList: []);
  }
}
