import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:my_messenger/core/errors/failure.dart';
import 'package:my_messenger/core/utils/either/either.dart';
import 'package:my_messenger/features/chat_list/data/models/chat_room.dart';
import 'package:my_messenger/features/chat_list/data/models/chat_room_failure.dart';

abstract interface class IChatListRemoteDatasource {
  Future<Either<Failure, List<ChatRoomModel>>> getRooms(String userId);
  Future<Either<Failure, ChatRoomModel>> createRoom();
}

@LazySingleton(as: IChatListRemoteDatasource)
class ChatListRemoteDatasource implements IChatListRemoteDatasource {
  final db = FirebaseFirestore.instance;
  @override
  Future<Either<Failure, ChatRoomModel>> createRoom() {
    // TODO: implement createRoom
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ChatRoomModel>>> getRooms(String userId) async {
    try {
      final snapshot = await db
          .collection('rooms')
          .where(
            'members',
            arrayContains: userId,
          )
          .get();
      final rooms = snapshot.docs.map((e) {
        return ChatRoomModel.fromJson({
          ...e.data(),
          'id': e.id,
        });
      }).toList();
      return Either.right(rooms);
    } on Exception catch (_) {
      return const Either.left(ChatRoomFailure.unknown());
    }
  }
}
