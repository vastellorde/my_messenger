import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@Freezed(fromJson: true)
class MessageModel with _$MessageModel {
  const factory MessageModel({
    required String uid,
    required String text,
    required int time,
    required String senderUid,
    required String receiverUid,
    required String roomId,
    @Default(false) bool isSeen,
    String? imageUrl,
    String? documentUrl,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);
}
