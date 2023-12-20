import 'package:my_messenger/core/errors/failure.dart';
import 'package:my_messenger/core/utils/either/either.dart';
import 'package:my_messenger/core/utils/unit/unit.dart';
import 'package:my_messenger/features/chat/domain/entity/message_entity.dart';

abstract interface class IChatRepository {
  Future<Either<Failure, Stream<Iterable<MessageEntity>>>> getMessages(
      String roomId);
  Future<Either<Failure, Unit>> sendMessage({
    required String text,
    required String roomId,
    required String senderId,
    required String receiverId,
  });
}
