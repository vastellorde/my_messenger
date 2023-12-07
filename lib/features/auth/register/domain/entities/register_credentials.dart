import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_messenger/core/utils/form/value_failure.dart';
import 'package:my_messenger/core/utils/form/value_objects.dart';
import 'package:my_messenger/core/utils/option/option.dart';

part 'register_credentials.freezed.dart';

@freezed
class RegisterCredentials with _$RegisterCredentials {
  const RegisterCredentials._();

  const factory RegisterCredentials({
    required EmailAddress emailAddress,
    required Username username,
    required Password password,
    required Password repeatPassword,
  }) = _RegisterCredentials;

  factory RegisterCredentials.empty() {
    return RegisterCredentials(
      emailAddress: EmailAddress(''),
      username: Username(''),
      password: Password(''),
      repeatPassword: Password(''),
    );
  }

  Option<ValueFailure<dynamic>> get failureOption => emailAddress.failureOrUnit
      .andThen(username.failureOrUnit)
      .andThen(password.failureOrUnit)
      .andThen(repeatPassword.failureOrUnit)
      .fold(Option.some, (_) => const Option.none());
}
