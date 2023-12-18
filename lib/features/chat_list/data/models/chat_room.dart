import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_messenger/features/chat/data/models/message.dart';

part 'chat_room.freezed.dart';

@freezed
class ChatRoom with _$ChatRoom {
  const factory ChatRoom({
    required List<String> members,
    Message? lastMessage,
  }) = _ChatRoom;
}
