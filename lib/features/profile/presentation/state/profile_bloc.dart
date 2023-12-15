import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_messenger/core/services/user/models/user_model.dart';
import 'package:my_messenger/core/services/user/user_service.dart';

part 'profile_bloc_models.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IUserService _userService;
  ProfileBloc(
    this._userService,
  ) : super(const ProfileState.unAuthorized()) {
    on<ProfileEvent>(_onProfile);
  }

  FutureOr<void> _onProfile(
      ProfileEvent event, Emitter<ProfileState> emit) async {
    final auth = FirebaseAuth.instance;
    await event.when(
      init: () async {
        final uid = auth.currentUser?.uid;
        if (uid != null) {
          final user = await _userService.getUser(uid);

          user.when(
            // TODO(vastellorde): implement error state
            left: (failure) {},
            right: (user) {
              emit(ProfileState.authorized(user: user));
            },
          );
        }
      },
      logOut: () async {
        await auth.signOut();
      },
    );
  }
}
