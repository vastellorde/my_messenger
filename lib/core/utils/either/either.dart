import 'package:freezed_annotation/freezed_annotation.dart';

part 'either.freezed.dart';

typedef Function1<A, B> = B Function(A a);

@freezed
class Either<L, R> with _$Either<L, R> {
  const factory Either.left(L left) = _EitherLeft<L, R>;
  const factory Either.right(R right) = _EitherRight<L, R>;

  bool get isLeft => this is _EitherLeft<L, R>;
  bool get isRight => this is _EitherRight<L, R>;

  L get left => (this as _EitherLeft<L, R>).left;
  R get right => (this as _EitherRight<L, R>).right;

  const Either._();

  B fold<B>(B Function(L l) ifLeft, B Function(R r) ifRight) {
    if (isLeft) {
      return ifLeft(left);
    }
    return ifRight(right);
  }

  Either<L, R1> flatMap<R1>(Either<L, R1> Function(R r) f) {
    return fold(Either<L, R1>.left, f);
  }

  Either<L, R1> andThen<R1>(Either<L, R1> next) =>
      fold(Either.left, (r) => next);

  R getOrElse(R Function() orElse) => fold((_) => orElse(), (r) => r);
}
