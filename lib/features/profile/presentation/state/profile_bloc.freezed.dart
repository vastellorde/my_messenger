// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitProfile value) init,
    required TResult Function(_LogoutProfile value) logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitProfile value)? init,
    TResult? Function(_LogoutProfile value)? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitProfile value)? init,
    TResult Function(_LogoutProfile value)? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitProfileImplCopyWith<$Res> {
  factory _$$InitProfileImplCopyWith(
          _$InitProfileImpl value, $Res Function(_$InitProfileImpl) then) =
      __$$InitProfileImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitProfileImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$InitProfileImpl>
    implements _$$InitProfileImplCopyWith<$Res> {
  __$$InitProfileImplCopyWithImpl(
      _$InitProfileImpl _value, $Res Function(_$InitProfileImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitProfileImpl implements _InitProfile {
  const _$InitProfileImpl();

  @override
  String toString() {
    return 'ProfileEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitProfileImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() logOut,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? logOut,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitProfile value) init,
    required TResult Function(_LogoutProfile value) logOut,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitProfile value)? init,
    TResult? Function(_LogoutProfile value)? logOut,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitProfile value)? init,
    TResult Function(_LogoutProfile value)? logOut,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _InitProfile implements ProfileEvent {
  const factory _InitProfile() = _$InitProfileImpl;
}

/// @nodoc
abstract class _$$LogoutProfileImplCopyWith<$Res> {
  factory _$$LogoutProfileImplCopyWith(
          _$LogoutProfileImpl value, $Res Function(_$LogoutProfileImpl) then) =
      __$$LogoutProfileImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutProfileImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$LogoutProfileImpl>
    implements _$$LogoutProfileImplCopyWith<$Res> {
  __$$LogoutProfileImplCopyWithImpl(
      _$LogoutProfileImpl _value, $Res Function(_$LogoutProfileImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutProfileImpl implements _LogoutProfile {
  const _$LogoutProfileImpl();

  @override
  String toString() {
    return 'ProfileEvent.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutProfileImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() logOut,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? logOut,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitProfile value) init,
    required TResult Function(_LogoutProfile value) logOut,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitProfile value)? init,
    TResult? Function(_LogoutProfile value)? logOut,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitProfile value)? init,
    TResult Function(_LogoutProfile value)? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _LogoutProfile implements ProfileEvent {
  const factory _LogoutProfile() = _$LogoutProfileImpl;
}

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unAuthorized,
    required TResult Function(UserModel user) authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unAuthorized,
    TResult? Function(UserModel user)? authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unAuthorized,
    TResult Function(UserModel user)? authorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnAuthorizedProfile value) unAuthorized,
    required TResult Function(_AuthorizedProfile value) authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnAuthorizedProfile value)? unAuthorized,
    TResult? Function(_AuthorizedProfile value)? authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnAuthorizedProfile value)? unAuthorized,
    TResult Function(_AuthorizedProfile value)? authorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnAuthorizedProfileImplCopyWith<$Res> {
  factory _$$UnAuthorizedProfileImplCopyWith(_$UnAuthorizedProfileImpl value,
          $Res Function(_$UnAuthorizedProfileImpl) then) =
      __$$UnAuthorizedProfileImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnAuthorizedProfileImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$UnAuthorizedProfileImpl>
    implements _$$UnAuthorizedProfileImplCopyWith<$Res> {
  __$$UnAuthorizedProfileImplCopyWithImpl(_$UnAuthorizedProfileImpl _value,
      $Res Function(_$UnAuthorizedProfileImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnAuthorizedProfileImpl implements _UnAuthorizedProfile {
  const _$UnAuthorizedProfileImpl();

  @override
  String toString() {
    return 'ProfileState.unAuthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnAuthorizedProfileImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unAuthorized,
    required TResult Function(UserModel user) authorized,
  }) {
    return unAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unAuthorized,
    TResult? Function(UserModel user)? authorized,
  }) {
    return unAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unAuthorized,
    TResult Function(UserModel user)? authorized,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnAuthorizedProfile value) unAuthorized,
    required TResult Function(_AuthorizedProfile value) authorized,
  }) {
    return unAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnAuthorizedProfile value)? unAuthorized,
    TResult? Function(_AuthorizedProfile value)? authorized,
  }) {
    return unAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnAuthorizedProfile value)? unAuthorized,
    TResult Function(_AuthorizedProfile value)? authorized,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized(this);
    }
    return orElse();
  }
}

abstract class _UnAuthorizedProfile implements ProfileState {
  const factory _UnAuthorizedProfile() = _$UnAuthorizedProfileImpl;
}

/// @nodoc
abstract class _$$AuthorizedProfileImplCopyWith<$Res> {
  factory _$$AuthorizedProfileImplCopyWith(_$AuthorizedProfileImpl value,
          $Res Function(_$AuthorizedProfileImpl) then) =
      __$$AuthorizedProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthorizedProfileImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$AuthorizedProfileImpl>
    implements _$$AuthorizedProfileImplCopyWith<$Res> {
  __$$AuthorizedProfileImplCopyWithImpl(_$AuthorizedProfileImpl _value,
      $Res Function(_$AuthorizedProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthorizedProfileImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$AuthorizedProfileImpl implements _AuthorizedProfile {
  const _$AuthorizedProfileImpl({required this.user});

  @override
  final UserModel user;

  @override
  String toString() {
    return 'ProfileState.authorized(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorizedProfileImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorizedProfileImplCopyWith<_$AuthorizedProfileImpl> get copyWith =>
      __$$AuthorizedProfileImplCopyWithImpl<_$AuthorizedProfileImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unAuthorized,
    required TResult Function(UserModel user) authorized,
  }) {
    return authorized(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unAuthorized,
    TResult? Function(UserModel user)? authorized,
  }) {
    return authorized?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unAuthorized,
    TResult Function(UserModel user)? authorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnAuthorizedProfile value) unAuthorized,
    required TResult Function(_AuthorizedProfile value) authorized,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnAuthorizedProfile value)? unAuthorized,
    TResult? Function(_AuthorizedProfile value)? authorized,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnAuthorizedProfile value)? unAuthorized,
    TResult Function(_AuthorizedProfile value)? authorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class _AuthorizedProfile implements ProfileState {
  const factory _AuthorizedProfile({required final UserModel user}) =
      _$AuthorizedProfileImpl;

  UserModel get user;
  @JsonKey(ignore: true)
  _$$AuthorizedProfileImplCopyWith<_$AuthorizedProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
