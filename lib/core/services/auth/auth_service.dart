import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:my_messenger/core/interfaces/disposable.dart';
import 'package:rxdart/rxdart.dart';

abstract interface class IAuthService implements IDisposable {
  Stream<bool> get authStream;
  bool get isLoggedIn;

  void auth();
  void unAuth();
}

@Singleton(as: IAuthService, dispose: disposeService)
class AuthService implements IAuthService {
  final _authSubject = BehaviorSubject<bool>.seeded(true);

  @override
  Stream<bool> get authStream => _authSubject.stream;

  @override
  bool get isLoggedIn => _authSubject.value;

  @override
  void auth() {
    _authSubject.sink.add(true);
  }

  @override
  void unAuth() {
    _authSubject.sink.add(false);
  }

  @override
  void dispose() {
    _authSubject.close();
  }
}

FutureOr disposeService(IAuthService instance) {
  instance.dispose();
}
