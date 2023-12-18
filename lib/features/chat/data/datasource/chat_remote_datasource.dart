import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:my_messenger/features/chat/data/models/message.dart';

abstract interface class IChatRemoteDatasource {
  Stream<Iterable<Message>> getMessages(String roomId);
  Future<void> sendMessage(Message message);
}

@LazySingleton(as: IChatRemoteDatasource)
class ChatRemoteDatasource implements IChatRemoteDatasource {
  final db = FirebaseFirestore.instance;
  @override
  Stream<Iterable<Message>> getMessages(String roomId) {
    final messages = db
        .collection('messages')
        .where('room_id', isEqualTo: roomId)
        .snapshots()
        .map((event) {
      return event.docs.map((doc) {
        return Message.fromJson(doc.data());
      });
    });

    return messages;
  }

  @override
  Future<void> sendMessage(Message message) async {
    await db.collection('messages').add(message.toJson());
  }
}
