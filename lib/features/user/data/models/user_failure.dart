import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_messenger/core/errors/failure.dart';

part 'user_failure.freezed.dart';

@freezed
sealed class UserFailure extends Failure with _$UserFailure {
  const factory UserFailure.notExist() = _UserNotExistFailure;
  const factory UserFailure.unknown() = _UserUnknownFailure;
}
