import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:my_messenger/core/utils/either/either.dart';
import 'package:my_messenger/features/auth/login/domain/entities/auth_failure.dart';
import 'package:my_messenger/features/auth/register/data/datasource/remote/register_remote_datasource.dart';
import 'package:my_messenger/features/auth/register/data/models/register_request.dart';
import 'package:my_messenger/features/auth/register/domain/repositories/register_repository.dart';

@LazySingleton(as: IRegisterRepository)
class RegisterRepository implements IRegisterRepository {
  final IRegisterRemoteDatasource datasource;

  const RegisterRepository(this.datasource);

  @override
  Future<Either<AuthFailure, UserCredential>> register(
          RegisterRequest request) =>
      datasource.register(request);
}
