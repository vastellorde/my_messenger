import 'package:my_messenger/core/utils/either/either.dart';
import 'package:my_messenger/core/utils/form/value_failure.dart';
import 'package:my_messenger/core/utils/form/value_object.dart';
import 'package:my_messenger/core/utils/form/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(
        validateStringNotEmpty(input).flatMap(validateEmailAddress));
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(validateStringNotEmpty(input));
  }

  const Password._(this.value);
}

class RepeatPassword extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory RepeatPassword(String input, String password) {
    return RepeatPassword._(validateStringNotEmpty(input)
        .flatMap((r) => validatePasswordMath(password, r)));
  }

  const RepeatPassword._(this.value);
}

class Username extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Username(String username) {
    return Username._(
      validateStringNotEmpty(username).flatMap(
        (v) => validateStringMinLength(v, 5),
      ),
    );
  }

  const Username._(this.value);
}
