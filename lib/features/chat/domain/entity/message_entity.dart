import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_messenger/features/chat/data/models/message.dart';

part 'message_entity.freezed.dart';

@freezed
class MessageEntity with _$MessageEntity {
  const factory MessageEntity({
    required String uid,
    required String text,
    required DateTime time,
    required String senderUid,
    required String receiverUid,
    required String roomId,
    @Default(false) bool isSeen,
    String? imageUrl,
    String? documentUrl,
  }) = _MessageEntity;

  factory MessageEntity.fromModel(MessageModel model) {
    return MessageEntity(
        uid: model.uid,
        text: model.text,
        time: model.time,
        senderUid: model.senderUid,
        receiverUid: model.receiverUid,
        roomId: model.roomId);
  }
}
