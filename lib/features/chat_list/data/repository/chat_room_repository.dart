import 'package:injectable/injectable.dart';
import 'package:my_messenger/core/errors/failure.dart';
import 'package:my_messenger/core/utils/either/either.dart';
import 'package:my_messenger/features/chat_list/data/datasource/remote/chat_list_remote_datasource.dart';
import 'package:my_messenger/features/chat_list/domain/enitity/chat_room_entity.dart';
import 'package:my_messenger/features/chat_list/domain/repository/chat_room_repostiory.dart';

@LazySingleton(as: IChatRoomRepository)
class ChatRoomRepository implements IChatRoomRepository {
  final IChatListRemoteDatasource _datasource;

  const ChatRoomRepository(this._datasource);

  @override
  Future<Either<Failure, ChatRoomEntity>> createRoom() {
    // TODO: implement createRoom
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ChatRoomEntity>>> getRooms(String userId) async {
    final res = await _datasource.getRooms(userId);
    if (res.isLeft) {
      return Either.left(res.left);
    }
    return Either.right(
      res.right.map(ChatRoomEntity.fromModel).toList(),
    );
  }
}
