part of 'profile_bloc.dart';

@freezed
sealed class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.init() = _InitProfile;
  const factory ProfileEvent.logOut() = _LogoutProfile;
}

@freezed
sealed class ProfileState with _$ProfileState {
  const factory ProfileState.unAuthorized() = _UnAuthorizedProfile;
  const factory ProfileState.authorized({
    required UserModel user,
  }) = _AuthorizedProfile;
}
