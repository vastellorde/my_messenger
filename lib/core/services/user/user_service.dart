import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:my_messenger/core/services/user/models/user_failure.dart';
import 'package:my_messenger/core/services/user/models/user_model.dart';
import 'package:my_messenger/core/utils/either/either.dart';

abstract interface class IUserService {
  Future<void> createUser(User user);
  Future<Either<UserFailure, User>> getUser(String userId);
}

@Singleton(as: IUserService)
class UserService implements IUserService {
  @override
  Future<void> createUser(User user) async {
    final map = user.toJson();
    final db = FirebaseFirestore.instance;
    await db.collection('users').add(map);
  }

  @override
  Future<Either<UserFailure, User>> getUser(String userId) async {
    final db = FirebaseFirestore.instance;

    final userSnapshot =
        await db.collection('users').where('id', isEqualTo: userId).get();
    if (userSnapshot.docs.isEmpty) {
      return const Either.left(UserFailure.notExist());
    }
    final user = User.fromJson(userSnapshot.docs.first.data());
    return Either.right(user);
  }
}
