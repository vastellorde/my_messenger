import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_model.freezed.dart';
part 'error_model.g.dart';

@freezed
class CommonResponseError<T> with _$CommonResponseError<T> {
  const factory CommonResponseError.noNetwork() = _NoNetwork;
  const factory CommonResponseError.unAuthorized() = _UnAuthorized;
  const factory CommonResponseError.tooManyRequests() = _ToManyRequests;
  const factory CommonResponseError.customError(T error) = _CustomError;
  const factory CommonResponseError.undefinedError(Object? error) =
      _UndefinedError;

  const CommonResponseError._();

  bool get isNoNetwork => this is _NoNetwork;
  bool get isUnAuthorized => this is _UnAuthorized;
  bool get isToManyRequests => this is _ToManyRequests;
  bool get isCustomError => this is _CustomError;
  bool get isUndefinedError => this is _UndefinedError;

  T? get safeCustom =>
      this is _CustomError<T> ? (this as _CustomError<T>).error : null;
}

@freezed
class DefaultApiError with _$DefaultApiError {
  const factory DefaultApiError({required String code}) = _DefaultApiError;

  factory DefaultApiError.fromJson(Map<String, dynamic> json) =>
      _$DefaultApiErrorFromJson(json);
}
