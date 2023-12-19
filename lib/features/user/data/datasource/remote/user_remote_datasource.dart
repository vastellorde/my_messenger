import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:my_messenger/core/utils/either/either.dart';
import 'package:my_messenger/core/utils/unit/unit.dart';
import 'package:my_messenger/features/user/data/models/user_failure.dart';
import 'package:my_messenger/features/user/data/models/user_model.dart';

abstract interface class IUserRemoteDatasource {
  Future<Either<UserFailure, Unit>> createUser(UserModel user);
  Future<Either<UserFailure, UserModel>> getUser(String userId);
}

@LazySingleton(as: IUserRemoteDatasource)
class UserRemoteDatasource implements IUserRemoteDatasource {
  final db = FirebaseFirestore.instance;

  @override
  Future<Either<UserFailure, Unit>> createUser(UserModel user) async {
    try {
      final map = user.toJson();
      await db.collection('users').add(map);
      return const Either.right(unit);
    } on Exception catch (_) {
      return const Either.left(UserFailure.unknown());
    }
  }

  @override
  Future<Either<UserFailure, UserModel>> getUser(String userId) async {
    try {
      final userSnapshot =
          await db.collection('users').where('id', isEqualTo: userId).get();
      if (userSnapshot.docs.isEmpty) {
        return const Either.left(UserFailure.notExist());
      }
      final user = UserModel.fromJson(userSnapshot.docs.first.data());
      return Either.right(user);
    } on FirebaseException catch (_) {
      return const Either.left(UserFailure.unknown());
    }
  }
}
