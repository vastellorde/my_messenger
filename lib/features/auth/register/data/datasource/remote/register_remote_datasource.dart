import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:my_messenger/core/utils/either/either.dart';
import 'package:my_messenger/features/auth/login/domain/entities/auth_failure.dart';
import 'package:my_messenger/features/auth/register/data/models/register_request.dart';

abstract interface class IRegisterRemoteDatasource {
  Future<Either<AuthFailure, UserCredential>> register(RegisterRequest request);
}

@LazySingleton(as: IRegisterRemoteDatasource)
class RegisterRemoteDatasource implements IRegisterRemoteDatasource {
  @override
  Future<Either<AuthFailure, UserCredential>> register(
    RegisterRequest request,
  ) async {
    try {
      final credentials = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: request.email, password: request.password);

      final db = FirebaseFirestore.instance;
      final user = request.toJson()..remove('password');
      await db.collection('users').add(user);
      return Either.right(credentials);
    } on FirebaseAuthException catch (e) {
      return Either.left(AuthFailure(reason: e.code));
    } on Exception catch (_) {
      return const Either.left(AuthFailure(reason: 'Unknown error'));
    }
  }
}
