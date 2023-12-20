import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@Freezed(
  fromJson: true,
  toJson: true,
)
class Message with _$Message {
  const factory Message({
    required String uid,
    required String text,
    required DateTime time,
    required String senderUid,
    required String receiverUid,
    required String roomId,
    @Default(false) bool isSeen,
    String? imageUrl,
    String? documentUrl,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
