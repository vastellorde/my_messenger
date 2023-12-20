import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:my_messenger/core/errors/failure.dart';
import 'package:my_messenger/core/utils/either/either.dart';
import 'package:my_messenger/core/utils/unit/unit.dart';
import 'package:my_messenger/features/chat/data/models/message.dart';
import 'package:my_messenger/features/chat/data/models/message_failure.dart';

abstract interface class IChatRemoteDatasource {
  Future<Either<Failure, Stream<Iterable<MessageModel>>>> getMessages(
      String roomId);
  Future<Either<Failure, Unit>> sendMessage({
    required String text,
    required String roomId,
    required String senderId,
    required String receiverId,
  });
}

@LazySingleton(as: IChatRemoteDatasource)
class ChatRemoteDatasource implements IChatRemoteDatasource {
  final db = FirebaseFirestore.instance;
  @override
  Future<Either<Failure, Stream<Iterable<MessageModel>>>> getMessages(
      String roomId) async {
    try {
      final messages = db
          .collection(
            'rooms/$roomId/messages',
          )
          .snapshots()
          .map((event) {
        return event.docs.map((doc) {
          return MessageModel.fromJson({...doc.data(), 'uid': doc.id});
        });
      });

      return Either.right(messages);
    } on FirebaseException catch (_) {
      return const Either.left(MessageFailure.unknown());
    }
  }

  @override
  Future<Either<Failure, Unit>> sendMessage({
    required String text,
    required String roomId,
    required String senderId,
    required String receiverId,
  }) async {
    try {
      await db.collection('rooms/$roomId/messages').add(
        {
          'text': text,
          'room_id': roomId,
          'sender_uid': senderId,
          'receiver_uid': receiverId,
          'time': DateTime.now().toString(),
        },
      );
      return const Either.right(unit);
    } on FirebaseException catch (_) {
      return const Either.left(MessageFailure.cantSend());
    }
  }
}
