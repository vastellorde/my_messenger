// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_credentials.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterCredentials {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Username get username => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  RepeatPassword get repeatPassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterCredentialsCopyWith<RegisterCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterCredentialsCopyWith<$Res> {
  factory $RegisterCredentialsCopyWith(
          RegisterCredentials value, $Res Function(RegisterCredentials) then) =
      _$RegisterCredentialsCopyWithImpl<$Res, RegisterCredentials>;
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      Username username,
      Password password,
      RepeatPassword repeatPassword});
}

/// @nodoc
class _$RegisterCredentialsCopyWithImpl<$Res, $Val extends RegisterCredentials>
    implements $RegisterCredentialsCopyWith<$Res> {
  _$RegisterCredentialsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? username = null,
    Object? password = null,
    Object? repeatPassword = null,
  }) {
    return _then(_value.copyWith(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      repeatPassword: null == repeatPassword
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as RepeatPassword,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterCredentialsImplCopyWith<$Res>
    implements $RegisterCredentialsCopyWith<$Res> {
  factory _$$RegisterCredentialsImplCopyWith(_$RegisterCredentialsImpl value,
          $Res Function(_$RegisterCredentialsImpl) then) =
      __$$RegisterCredentialsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      Username username,
      Password password,
      RepeatPassword repeatPassword});
}

/// @nodoc
class __$$RegisterCredentialsImplCopyWithImpl<$Res>
    extends _$RegisterCredentialsCopyWithImpl<$Res, _$RegisterCredentialsImpl>
    implements _$$RegisterCredentialsImplCopyWith<$Res> {
  __$$RegisterCredentialsImplCopyWithImpl(_$RegisterCredentialsImpl _value,
      $Res Function(_$RegisterCredentialsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? username = null,
    Object? password = null,
    Object? repeatPassword = null,
  }) {
    return _then(_$RegisterCredentialsImpl(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      repeatPassword: null == repeatPassword
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as RepeatPassword,
    ));
  }
}

/// @nodoc

class _$RegisterCredentialsImpl extends _RegisterCredentials {
  const _$RegisterCredentialsImpl(
      {required this.emailAddress,
      required this.username,
      required this.password,
      required this.repeatPassword})
      : super._();

  @override
  final EmailAddress emailAddress;
  @override
  final Username username;
  @override
  final Password password;
  @override
  final RepeatPassword repeatPassword;

  @override
  String toString() {
    return 'RegisterCredentials(emailAddress: $emailAddress, username: $username, password: $password, repeatPassword: $repeatPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterCredentialsImpl &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.repeatPassword, repeatPassword) ||
                other.repeatPassword == repeatPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, emailAddress, username, password, repeatPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterCredentialsImplCopyWith<_$RegisterCredentialsImpl> get copyWith =>
      __$$RegisterCredentialsImplCopyWithImpl<_$RegisterCredentialsImpl>(
          this, _$identity);
}

abstract class _RegisterCredentials extends RegisterCredentials {
  const factory _RegisterCredentials(
          {required final EmailAddress emailAddress,
          required final Username username,
          required final Password password,
          required final RepeatPassword repeatPassword}) =
      _$RegisterCredentialsImpl;
  const _RegisterCredentials._() : super._();

  @override
  EmailAddress get emailAddress;
  @override
  Username get username;
  @override
  Password get password;
  @override
  RepeatPassword get repeatPassword;
  @override
  @JsonKey(ignore: true)
  _$$RegisterCredentialsImplCopyWith<_$RegisterCredentialsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
