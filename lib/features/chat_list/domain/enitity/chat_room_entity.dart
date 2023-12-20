import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_messenger/features/chat/data/models/message.dart';
import 'package:my_messenger/features/chat_list/data/models/chat_room.dart';

part 'chat_room_entity.freezed.dart';

@freezed
class ChatRoomEntity with _$ChatRoomEntity {
  const factory ChatRoomEntity({
    required String id,
    required List<String> members,
    @Default([]) List<Message> messages,
  }) = _ChatRoomEntity;

  Message? get lastMessage => messages.isNotEmpty ? messages.last : null;

  factory ChatRoomEntity.fromModel(ChatRoomModel model) {
    return ChatRoomEntity(
      members: model.members,
      messages: model.messages,
      id: model.id,
    );
  }

  const ChatRoomEntity._();
}
