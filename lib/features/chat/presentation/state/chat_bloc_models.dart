part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.sendMessage({required Message message}) =
      _SendMessage;
}

@freezed
class ChatState with _$ChatState {
  const factory ChatState({required Ds<List<Message>> messageList}) =
      _ChatState;

  factory ChatState.empty() {
    return ChatState(messageList: const Ds());
  }
}
