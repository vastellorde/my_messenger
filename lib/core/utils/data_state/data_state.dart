import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_state.freezed.dart';

@freezed
class Ds<T> with _$Ds<T> {
  const factory Ds.success({required T data}) = _Success;
  const factory Ds.error({required Object error}) = _Error;
  const factory Ds.loading() = _Loading;
  const factory Ds() = _Ds;
}
