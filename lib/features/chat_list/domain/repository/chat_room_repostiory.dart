import 'package:my_messenger/core/errors/failure.dart';
import 'package:my_messenger/core/utils/either/either.dart';
import 'package:my_messenger/features/chat_list/domain/enitity/chat_room_entity.dart';

abstract interface class IChatRoomRepository {
  Future<Either<Failure, List<ChatRoomEntity>>> getRooms(String userId);
  Future<Either<Failure, ChatRoomEntity>> createRoom();
}
