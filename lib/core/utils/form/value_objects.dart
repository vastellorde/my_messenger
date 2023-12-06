import 'package:my_messenger/core/utils/either/either.dart';
import 'package:my_messenger/core/utils/form/value_failure.dart';
import 'package:my_messenger/core/utils/form/value_object.dart';
import 'package:my_messenger/core/utils/form/value_validators.dart';

class EmailAddress extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(
        validateStringNotEmpty(input).flatMap(validateEmailAddress));
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(validateStringNotEmpty(input));
  }

  const Password._(this.value);
}
