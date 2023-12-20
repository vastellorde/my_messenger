import 'package:injectable/injectable.dart';
import 'package:my_messenger/core/errors/failure.dart';
import 'package:my_messenger/core/utils/either/either.dart';
import 'package:my_messenger/core/utils/unit/unit.dart';
import 'package:my_messenger/features/chat/data/datasource/chat_remote_datasource.dart';
import 'package:my_messenger/features/chat/domain/entity/message_entity.dart';
import 'package:my_messenger/features/chat/domain/repositories/chat_repository.dart';

@LazySingleton(as: IChatRepository)
class ChatRepository implements IChatRepository {
  final IChatRemoteDatasource _datasource;

  const ChatRepository(this._datasource);

  @override
  Future<Either<Failure, Stream<Iterable<MessageEntity>>>> getMessages(
      String roomId) async {
    final res = await _datasource.getMessages(roomId);
    if (res.isLeft) {
      return Either.left(res.left);
    }

    return Either.right(res.right.map((event) {
      return event.map((e) => MessageEntity.fromModel(e));
    }));
  }

  @override
  Future<Either<Failure, Unit>> sendMessage(
          {required String text,
          required String roomId,
          required String senderId,
          required String receiverId}) =>
      _datasource.sendMessage(
          text: text,
          roomId: roomId,
          senderId: senderId,
          receiverId: receiverId);
}
