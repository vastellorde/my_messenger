import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:my_messenger/core/errors/failure.dart';
import 'package:my_messenger/core/interfaces/usecase.dart';
import 'package:my_messenger/core/utils/either/either.dart';
import 'package:my_messenger/features/user/domain/entities/user_entity.dart';
import 'package:my_messenger/features/user/domain/repositories/user_repository.dart';

@injectable
class GetUser implements Usecase<UserEntity, GetUserParams> {
  final IUserRepository _repository;

  GetUser(this._repository);

  @override
  FutureOr<Either<Failure, UserEntity>> call(GetUserParams params) =>
      _repository.getUser(params.userId);
}

class GetUserParams {
  final String userId;

  const GetUserParams(this.userId);
}
