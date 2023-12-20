part of 'chat_list_bloc.dart';

@freezed
class ChatListEvent with _$ChatListEvent {
  const factory ChatListEvent() = _ChatListEvent;
}

@freezed
class ChatListState with _$ChatListState {
  const factory ChatListState(List<ChatRoomEntity> chatRooms) = _ChatListState;

  factory ChatListState.empty() {
    return const ChatListState([]);
  }
}
