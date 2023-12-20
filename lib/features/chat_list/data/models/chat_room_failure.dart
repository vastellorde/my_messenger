import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_messenger/core/errors/failure.dart';

part 'chat_room_failure.freezed.dart';

@freezed
sealed class ChatRoomFailure extends Failure with _$ChatRoomFailure {
  const factory ChatRoomFailure.unknown() = _UnknownChatRoomFailure;
}
