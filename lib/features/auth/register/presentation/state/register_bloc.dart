import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_messenger/core/utils/data_state/data_state.dart';
import 'package:my_messenger/features/auth/register/data/models/register_request.dart';
import 'package:my_messenger/features/auth/register/domain/repositories/register_repository.dart';
import 'package:my_messenger/features/user/domain/usecases/create_user.dart';

part 'register_bloc_models.dart';
part 'register_bloc.freezed.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final IRegisterRepository repository;
  final CreateUser _createUser;
  RegisterBloc(
    this.repository,
    this._createUser,
  ) : super(RegisterState.empty()) {
    on<RegisterEvent>(_onRegister);
  }

  FutureOr<void> _onRegister(
    RegisterEvent event,
    Emitter<RegisterState> emit,
  ) async {
    emit(
      state.copyWith(
        dataState: const Ds.loading(),
      ),
    );
    final res = await repository.register(event.request);

    await res.when(
      left: (l) async {
        emit(
          state.copyWith(
            dataState: Ds.error(error: l),
          ),
        );
      },
      right: (r) async {
        final user = CreateUserParams(
          username: event.request.username,
          email: event.request.email,
          uid: res.right.user?.uid ?? '',
        );
        final createUserRes = await _createUser(user);
        createUserRes.when(left: (l) {
          emit(
            state.copyWith(
              dataState: Ds.error(error: l),
            ),
          );
        }, right: (r) {
          emit(
            state.copyWith(
              dataState: const Ds.success(data: null),
            ),
          );
        });
      },
    );
  }
}
