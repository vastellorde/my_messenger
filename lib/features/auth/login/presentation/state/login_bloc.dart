import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:my_messenger/core/utils/data_state/data_state.dart';
import 'package:my_messenger/features/auth/login/domain/repositories/login_repository.dart';
import 'package:my_messenger/features/auth/login/presentation/state/login_bloc_models.dart';
import 'package:talker_flutter/talker_flutter.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final Talker talker;
  final ILoginRepository repository;
  LoginBloc(
    this.talker,
    this.repository,
  ) : super(
          LoginState.empty(),
        ) {
    on<LoginEvent>(_onLogin);
  }

  FutureOr<void> _onLogin(LoginEvent event, Emitter<LoginState> emit) async {
    final response = await repository.signIn(event.request);
    if (response.isLeft) {
      emit(state.copyWith(dataState: Ds.error(error: response.left)));
    } else {
      emit(state.copyWith(dataState: const Ds.success(data: null)));
    }
  }
}
