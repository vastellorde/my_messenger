import 'package:injectable/injectable.dart';
import 'package:my_messenger/core/errors/failure.dart';
import 'package:my_messenger/core/utils/either/either.dart';
import 'package:my_messenger/core/utils/unit/unit.dart';
import 'package:my_messenger/features/user/data/datasource/remote/user_remote_datasource.dart';
import 'package:my_messenger/features/user/data/models/user_failure.dart';
import 'package:my_messenger/features/user/domain/entities/user_entity.dart';
import 'package:my_messenger/features/user/domain/repositories/user_repository.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  final IUserRemoteDatasource _datasource;

  UserRepository(this._datasource);

  @override
  Future<Either<Failure, Unit>> createUser(UserEntity user) {
    final model = user.toModel();

    return _datasource.createUser(model);
  }

  @override
  Future<Either<UserFailure, UserEntity>> getUser(String userId) async {
    final res = await _datasource.getUser(userId);

    if (res.isLeft) {
      return Either.left(res.left);
    }
    return Either.right(UserEntity.fromModel(res.right));
  }
}
