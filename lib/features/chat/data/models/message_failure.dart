import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_messenger/core/errors/failure.dart';

part 'message_failure.freezed.dart';

@freezed
sealed class MessageFailure extends Failure with _$MessageFailure {
  const factory MessageFailure.unknown() = _UnknownMessageFailure;
  const factory MessageFailure.cantSend() = _CantSendMessageFailure;
}
