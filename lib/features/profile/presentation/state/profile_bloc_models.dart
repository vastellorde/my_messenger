part of 'profile_bloc.dart';

@freezed
sealed class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.authorize({
    required UserModel user,
  }) = _AuthorizeProfile;
  const factory ProfileEvent.unAuthorize() = _UnAuthorizeProfile;
}

@freezed
sealed class ProfileState with _$ProfileState {
  const factory ProfileState.unAuthorized() = _UnAuthorizedProfile;
  const factory ProfileState.authorized({
    required UserModel user,
  }) = _AuthorizedProfile;
}
