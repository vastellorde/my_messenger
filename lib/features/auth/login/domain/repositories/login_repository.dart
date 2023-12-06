import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_messenger/core/utils/either/either.dart';
import 'package:my_messenger/features/auth/login/data/models/login_model.dart';
import 'package:my_messenger/features/auth/login/domain/entities/auth_failure.dart';

abstract interface class ILoginRepository {
  Future<Either<AuthFailure, UserCredential>> signIn(LoginRequest request);
}
