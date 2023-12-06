import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:my_messenger/core/utils/either/either.dart';
import 'package:my_messenger/features/auth/login/data/datasources/remote/login_remote_datasource.dart';
import 'package:my_messenger/features/auth/login/data/models/login_model.dart';
import 'package:my_messenger/features/auth/login/domain/entities/auth_failure.dart';
import 'package:my_messenger/features/auth/login/domain/repositories/login_repository.dart';

@LazySingleton(as: ILoginRepository)
class LoginRepository implements ILoginRepository {
  final ILoginRemoteDatasource datasource;

  LoginRepository(this.datasource);

  @override
  Future<Either<AuthFailure, UserCredential>> signIn(LoginRequest request) =>
      datasource.signIn(request);
}
