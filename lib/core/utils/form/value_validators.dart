import 'package:my_messenger/core/utils/either/either.dart';
import 'package:my_messenger/core/utils/form/value_failure.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return Either.right(input);
  }

  return Either.left(ValueFailure.empty(failedValue: input));
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  if (RegExp(emailRegex).hasMatch(input)) {
    return Either.right(input);
  }
  return Either.left(ValueFailure.invalid(failedValue: input));
}

Either<ValueFailure<String>, String> validateStringMinLength(
  String input,
  int length,
) {
  if (input.length >= length) {
    return Either.right(input);
  }

  return Either.left(ValueFailure.invalid(failedValue: input));
}

Either<ValueFailure<String>, String> validatePasswordMath(
  String password,
  String repeatPassword,
) {
  if (password == repeatPassword) {
    return Either.right(password);
  }

  return Either.left(ValueFailure.invalid(failedValue: repeatPassword));
}
