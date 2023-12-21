part of 'chat_bloc.dart';

@freezed
sealed class ChatEvent with _$ChatEvent {
  const factory ChatEvent.init(String roomId, List<String> members) = _InitChat;
  const factory ChatEvent.update(List<MessageEntity> messageList) = _UpdateChat;
  const factory ChatEvent.updateReceiver(UserEntity receiver) =
      _UpdateReceiverChat;
  const factory ChatEvent.sendMessage(SendMessageParams params) = _SendMessage;
}

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    required List<MessageEntity> messageList,
    required UserEntity receiver,
  }) = _ChatState;

  factory ChatState.empty() {
    return const ChatState(
      messageList: [],
      receiver: UserEntity(
        username: '',
        email: '',
        id: '',
        isOnline: false,
      ),
    );
  }
}
