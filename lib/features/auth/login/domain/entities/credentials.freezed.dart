// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credentials.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginCredentials {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginCredentialsCopyWith<LoginCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCredentialsCopyWith<$Res> {
  factory $LoginCredentialsCopyWith(
          LoginCredentials value, $Res Function(LoginCredentials) then) =
      _$LoginCredentialsCopyWithImpl<$Res, LoginCredentials>;
  @useResult
  $Res call({EmailAddress emailAddress, Password password});
}

/// @nodoc
class _$LoginCredentialsCopyWithImpl<$Res, $Val extends LoginCredentials>
    implements $LoginCredentialsCopyWith<$Res> {
  _$LoginCredentialsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginCredentialsImplCopyWith<$Res>
    implements $LoginCredentialsCopyWith<$Res> {
  factory _$$LoginCredentialsImplCopyWith(_$LoginCredentialsImpl value,
          $Res Function(_$LoginCredentialsImpl) then) =
      __$$LoginCredentialsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EmailAddress emailAddress, Password password});
}

/// @nodoc
class __$$LoginCredentialsImplCopyWithImpl<$Res>
    extends _$LoginCredentialsCopyWithImpl<$Res, _$LoginCredentialsImpl>
    implements _$$LoginCredentialsImplCopyWith<$Res> {
  __$$LoginCredentialsImplCopyWithImpl(_$LoginCredentialsImpl _value,
      $Res Function(_$LoginCredentialsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
  }) {
    return _then(_$LoginCredentialsImpl(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

class _$LoginCredentialsImpl extends _LoginCredentials {
  const _$LoginCredentialsImpl(
      {required this.emailAddress, required this.password})
      : super._();

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;

  @override
  String toString() {
    return 'LoginCredentials(emailAddress: $emailAddress, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginCredentialsImpl &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailAddress, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginCredentialsImplCopyWith<_$LoginCredentialsImpl> get copyWith =>
      __$$LoginCredentialsImplCopyWithImpl<_$LoginCredentialsImpl>(
          this, _$identity);
}

abstract class _LoginCredentials extends LoginCredentials {
  const factory _LoginCredentials(
      {required final EmailAddress emailAddress,
      required final Password password}) = _$LoginCredentialsImpl;
  const _LoginCredentials._() : super._();

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  @JsonKey(ignore: true)
  _$$LoginCredentialsImplCopyWith<_$LoginCredentialsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
