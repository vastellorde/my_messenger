import 'package:my_messenger/core/errors/failure.dart';
import 'package:my_messenger/core/utils/either/either.dart';
import 'package:my_messenger/core/utils/unit/unit.dart';
import 'package:my_messenger/features/user/data/models/user_failure.dart';
import 'package:my_messenger/features/user/domain/entities/user_entity.dart';

abstract interface class IUserRepository {
  Future<Either<Failure, Unit>> createUser(UserEntity user);
  Future<Either<UserFailure, UserEntity>> getUser(String userId);
}
