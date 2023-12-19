import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:my_messenger/core/errors/failure.dart';
import 'package:my_messenger/core/interfaces/usecase.dart';
import 'package:my_messenger/core/utils/either/either.dart';
import 'package:my_messenger/core/utils/unit/unit.dart';
import 'package:my_messenger/features/user/domain/entities/user_entity.dart';
import 'package:my_messenger/features/user/domain/repositories/user_repository.dart';

@injectable
class CreateUser implements Usecase<Unit, CreateUserParams> {
  final IUserRepository _repository;

  CreateUser(this._repository);

  @override
  FutureOr<Either<Failure, Unit>> call(CreateUserParams params) {
    final entity = UserEntity(
        username: params.username,
        email: params.email,
        id: params.uid,
        isOnline: false);

    return _repository.createUser(entity);
  }
}

class CreateUserParams {
  final String username;
  final String email;
  final String uid;

  CreateUserParams({
    required this.username,
    required this.email,
    required this.uid,
  });
}
