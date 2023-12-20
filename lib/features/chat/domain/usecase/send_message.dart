import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:my_messenger/core/errors/failure.dart';
import 'package:my_messenger/core/interfaces/usecase.dart';
import 'package:my_messenger/core/utils/either/either.dart';
import 'package:my_messenger/core/utils/unit/unit.dart';
import 'package:my_messenger/features/chat/domain/repositories/chat_repository.dart';

@injectable
class SendMessage implements Usecase<Unit, SendMessageParams> {
  final IChatRepository _repository;

  const SendMessage(this._repository);

  @override
  FutureOr<Either<Failure, Unit>> call(SendMessageParams params) {
    return _repository.sendMessage(
        text: params.text,
        roomId: params.roomId,
        senderId: params.senderId,
        receiverId: params.receiverId);
  }
}

class SendMessageParams {
  final String text;
  final String senderId;
  final String receiverId;
  final String roomId;

  SendMessageParams(
      {required this.text,
      required this.senderId,
      required this.receiverId,
      required this.roomId});
}
