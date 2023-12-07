import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_messenger/core/utils/either/either.dart';
import 'package:my_messenger/features/auth/login/domain/entities/auth_failure.dart';
import 'package:my_messenger/features/auth/register/data/models/register_request.dart';

abstract interface class IRegisterRepository {
  Future<Either<AuthFailure, UserCredential>> register(
    RegisterRequest request,
  );
}
