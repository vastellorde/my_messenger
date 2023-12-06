import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:my_messenger/core/utils/either/either.dart';
import 'package:my_messenger/features/auth/login/data/models/login_model.dart';
import 'package:my_messenger/features/auth/login/domain/entities/auth_failure.dart';

abstract interface class ILoginRemoteDatasource {
  Future<Either<AuthFailure, UserCredential>> signIn(LoginRequest request);
}

@LazySingleton(as: ILoginRemoteDatasource)
class LoginRemoteDatasource implements ILoginRemoteDatasource {
  @override
  Future<Either<AuthFailure, UserCredential>> signIn(
    LoginRequest request,
  ) async {
    try {
      final user = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: request.email,
        password: request.password,
      );
      return Either.right(user);
    } on FirebaseAuthException catch (e) {
      return Either.left(AuthFailure(reason: e.code));
    } on Exception catch (_) {
      return const Either.left(AuthFailure(reason: 'Unknown reason'));
    }
  }
}
