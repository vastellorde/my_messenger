import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:my_messenger/core/errors/failure.dart';
import 'package:my_messenger/core/interfaces/usecase.dart';
import 'package:my_messenger/core/utils/either/either.dart';
import 'package:my_messenger/features/chat/domain/entity/message_entity.dart';
import 'package:my_messenger/features/chat/domain/repositories/chat_repository.dart';

@injectable
class GetMessages
    implements Usecase<Stream<Iterable<MessageEntity>>, GetMessageParams> {
  final IChatRepository _repository;

  const GetMessages(this._repository);

  @override
  FutureOr<Either<Failure, Stream<Iterable<MessageEntity>>>> call(
          GetMessageParams params) =>
      _repository.getMessages(params.roomId);
}

class GetMessageParams {
  final String roomId;

  const GetMessageParams(this.roomId);
}
