import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';

enum MessageType { received, sent }

@freezed
class Message with _$Message {
  const factory Message.text({
    required String uid,
    required String text,
    required DateTime time,
    required MessageType type,
  }) = _TextMessage;
}
