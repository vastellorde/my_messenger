import 'package:freezed_annotation/freezed_annotation.dart';

part 'option.freezed.dart';

@freezed
class Option<T> with _$Option<T> {
  const factory Option.some(T value) = _Some;
  const factory Option.none() = _None;

  factory Option.of(T? value) {
    if (value == null) {
      return const Option.none();
    }
    return Option.some(value);
  }

  const Option._();

  T? get _value => this is _Some ? (this as _Some<T>).value : null;
  bool get isNone => this is _None;
  bool get isSome => this is _Some;

  B fold<B>(B Function() ifNone, B Function(T a) ifSome) {
    if (_value != null) {
      return ifSome(_value as T);
    }
    return ifNone();
  }
}
