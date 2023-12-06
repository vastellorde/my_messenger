import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_messenger/core/utils/form/value_failure.dart';
import 'package:my_messenger/core/utils/form/value_objects.dart';
import 'package:my_messenger/core/utils/option/option.dart';

part 'credentials.freezed.dart';

@freezed
class LoginCredentials with _$LoginCredentials {
  const LoginCredentials._();

  const factory LoginCredentials({
    required EmailAddress emailAddress,
    required Password password,
  }) = _LoginCredentials;

  factory LoginCredentials.empty() {
    return LoginCredentials(
        emailAddress: EmailAddress(''), password: Password(''));
  }

  Option<ValueFailure<dynamic>> get failureOption => emailAddress.failureOrUnit
      .andThen(password.failureOrUnit)
      .fold(Option.some, (_) => const Option.none());
}
