import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_messenger/features/chat/data/models/message.dart';

part 'chat_room.freezed.dart';
part 'chat_room.g.dart';

@Freezed(fromJson: true)
class ChatRoomModel with _$ChatRoomModel {
  const factory ChatRoomModel({
    required String id,
    required List<String> members,
    @Default([]) List<MessageModel> messages,
  }) = _ChatRoomModel;

  factory ChatRoomModel.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomModelFromJson(json);
}
