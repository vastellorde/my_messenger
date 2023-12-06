import 'package:my_messenger/core/utils/form/value_failure.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError({required this.valueFailure});

  @override
  String toString() {
    const errorMessage =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$errorMessage Failure was: $valueFailure');
  }
}
