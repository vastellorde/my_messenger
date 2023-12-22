import 'package:flutter/material.dart';
import 'package:my_messenger/core/utils/either/either.dart';
import 'package:my_messenger/core/utils/form/value_failure.dart';
import 'package:my_messenger/core/utils/unit/unit.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  bool get isValid => value.isRight;
  bool get isInvalid => value.isLeft;

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(Either.left, (_) => const Either.right(unit));
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return 'ValueObject(value: $value)';
  }
}
