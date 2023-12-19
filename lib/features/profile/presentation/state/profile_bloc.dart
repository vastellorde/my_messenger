import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_messenger/features/user/domain/entities/user_entity.dart';
import 'package:my_messenger/features/user/domain/usecases/get_user.dart';

part 'profile_bloc_models.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetUser _getUserUsecase;
  StreamSubscription? _authSubscription;
  ProfileBloc(
    this._getUserUsecase,
  ) : super(
          const ProfileState.unAuthorized(),
        ) {
    on<ProfileEvent>(_onProfile);
    _authSubscription = FirebaseAuth.instance.userChanges().distinct().listen(
          _handleUserChanges,
        );
  }

  FutureOr<void> _onProfile(
      ProfileEvent event, Emitter<ProfileState> emit) async {
    final auth = FirebaseAuth.instance;
    await event.when(
      authorize: (user) {
        emit(ProfileState.authorized(user: user));
      },
      unAuthorize: () async {
        await auth.signOut();
        emit(const ProfileState.unAuthorized());
      },
    );
  }

  FutureOr<void> _handleUserChanges(User? fbUser) async {
    if (fbUser != null) {
      final uid = fbUser.uid;
      final user = await _getUserUsecase(GetUserParams(uid));

      user.when(
        left: (failure) {
          add(const ProfileEvent.unAuthorize());
        },
        right: (user) {
          add(ProfileEvent.authorize(user: user));
        },
      );
    } else {
      add(const ProfileEvent.unAuthorize());
    }
  }

  @override
  Future<void> close() {
    _authSubscription?.cancel();
    return super.close();
  }
}
