import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:my_messenger/core/interfaces/disposable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:talker_flutter/talker_flutter.dart';

abstract interface class IAuthService implements IDisposable {
  Stream<bool> get authStream;
  bool get isLoggedIn;

  void init();
  void auth();
  void unAuth();
}

@Singleton(as: IAuthService, dispose: disposeService)
class AuthService implements IAuthService {
  final Talker talker;
  final _authSubject = BehaviorSubject<bool>.seeded(false);
  StreamSubscription<User?>? _streamSubscription;

  AuthService({required this.talker});

  @override
  Stream<bool> get authStream => _authSubject.stream;

  @override
  bool get isLoggedIn => _authSubject.value;

  @override
  void init() {
    talker.debug('[Auth Service] init');
    _streamSubscription = FirebaseAuth.instance.authStateChanges().listen(
      (user) {
        _authSubject.add(user != null);
      },
    );
  }

  @override
  void auth() {
    talker.debug('[AuthService] auth');
    _authSubject.sink.add(true);
  }

  @override
  void unAuth() {
    talker.debug('[AuthService] unAuth');
    _authSubject.sink.add(false);
  }

  @override
  void dispose() {
    _authSubject.close();
    _streamSubscription?.cancel();
  }
}

FutureOr disposeService(IAuthService instance) {
  instance.dispose();
}
