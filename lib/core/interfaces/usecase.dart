import 'dart:async';

import 'package:my_messenger/core/errors/failure.dart';
import 'package:my_messenger/core/utils/either/either.dart';

abstract interface class Usecase<TYPE, PARAMS> {
  FutureOr<Either<Failure, TYPE>> call(PARAMS params);
}
