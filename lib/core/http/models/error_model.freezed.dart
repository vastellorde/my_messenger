// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommonResponseError<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noNetwork,
    required TResult Function() unAuthorized,
    required TResult Function() tooManyRequests,
    required TResult Function(T error) customError,
    required TResult Function(Object? error) undefinedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noNetwork,
    TResult? Function()? unAuthorized,
    TResult? Function()? tooManyRequests,
    TResult? Function(T error)? customError,
    TResult? Function(Object? error)? undefinedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noNetwork,
    TResult Function()? unAuthorized,
    TResult Function()? tooManyRequests,
    TResult Function(T error)? customError,
    TResult Function(Object? error)? undefinedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoNetwork<T> value) noNetwork,
    required TResult Function(_UnAuthorized<T> value) unAuthorized,
    required TResult Function(_ToManyRequests<T> value) tooManyRequests,
    required TResult Function(_CustomError<T> value) customError,
    required TResult Function(_UndefinedError<T> value) undefinedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoNetwork<T> value)? noNetwork,
    TResult? Function(_UnAuthorized<T> value)? unAuthorized,
    TResult? Function(_ToManyRequests<T> value)? tooManyRequests,
    TResult? Function(_CustomError<T> value)? customError,
    TResult? Function(_UndefinedError<T> value)? undefinedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoNetwork<T> value)? noNetwork,
    TResult Function(_UnAuthorized<T> value)? unAuthorized,
    TResult Function(_ToManyRequests<T> value)? tooManyRequests,
    TResult Function(_CustomError<T> value)? customError,
    TResult Function(_UndefinedError<T> value)? undefinedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonResponseErrorCopyWith<T, $Res> {
  factory $CommonResponseErrorCopyWith(CommonResponseError<T> value,
          $Res Function(CommonResponseError<T>) then) =
      _$CommonResponseErrorCopyWithImpl<T, $Res, CommonResponseError<T>>;
}

/// @nodoc
class _$CommonResponseErrorCopyWithImpl<T, $Res,
        $Val extends CommonResponseError<T>>
    implements $CommonResponseErrorCopyWith<T, $Res> {
  _$CommonResponseErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NoNetworkImplCopyWith<T, $Res> {
  factory _$$NoNetworkImplCopyWith(
          _$NoNetworkImpl<T> value, $Res Function(_$NoNetworkImpl<T>) then) =
      __$$NoNetworkImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$NoNetworkImplCopyWithImpl<T, $Res>
    extends _$CommonResponseErrorCopyWithImpl<T, $Res, _$NoNetworkImpl<T>>
    implements _$$NoNetworkImplCopyWith<T, $Res> {
  __$$NoNetworkImplCopyWithImpl(
      _$NoNetworkImpl<T> _value, $Res Function(_$NoNetworkImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoNetworkImpl<T> extends _NoNetwork<T> {
  const _$NoNetworkImpl() : super._();

  @override
  String toString() {
    return 'CommonResponseError<$T>.noNetwork()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoNetworkImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noNetwork,
    required TResult Function() unAuthorized,
    required TResult Function() tooManyRequests,
    required TResult Function(T error) customError,
    required TResult Function(Object? error) undefinedError,
  }) {
    return noNetwork();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noNetwork,
    TResult? Function()? unAuthorized,
    TResult? Function()? tooManyRequests,
    TResult? Function(T error)? customError,
    TResult? Function(Object? error)? undefinedError,
  }) {
    return noNetwork?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noNetwork,
    TResult Function()? unAuthorized,
    TResult Function()? tooManyRequests,
    TResult Function(T error)? customError,
    TResult Function(Object? error)? undefinedError,
    required TResult orElse(),
  }) {
    if (noNetwork != null) {
      return noNetwork();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoNetwork<T> value) noNetwork,
    required TResult Function(_UnAuthorized<T> value) unAuthorized,
    required TResult Function(_ToManyRequests<T> value) tooManyRequests,
    required TResult Function(_CustomError<T> value) customError,
    required TResult Function(_UndefinedError<T> value) undefinedError,
  }) {
    return noNetwork(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoNetwork<T> value)? noNetwork,
    TResult? Function(_UnAuthorized<T> value)? unAuthorized,
    TResult? Function(_ToManyRequests<T> value)? tooManyRequests,
    TResult? Function(_CustomError<T> value)? customError,
    TResult? Function(_UndefinedError<T> value)? undefinedError,
  }) {
    return noNetwork?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoNetwork<T> value)? noNetwork,
    TResult Function(_UnAuthorized<T> value)? unAuthorized,
    TResult Function(_ToManyRequests<T> value)? tooManyRequests,
    TResult Function(_CustomError<T> value)? customError,
    TResult Function(_UndefinedError<T> value)? undefinedError,
    required TResult orElse(),
  }) {
    if (noNetwork != null) {
      return noNetwork(this);
    }
    return orElse();
  }
}

abstract class _NoNetwork<T> extends CommonResponseError<T> {
  const factory _NoNetwork() = _$NoNetworkImpl<T>;
  const _NoNetwork._() : super._();
}

/// @nodoc
abstract class _$$UnAuthorizedImplCopyWith<T, $Res> {
  factory _$$UnAuthorizedImplCopyWith(_$UnAuthorizedImpl<T> value,
          $Res Function(_$UnAuthorizedImpl<T>) then) =
      __$$UnAuthorizedImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$UnAuthorizedImplCopyWithImpl<T, $Res>
    extends _$CommonResponseErrorCopyWithImpl<T, $Res, _$UnAuthorizedImpl<T>>
    implements _$$UnAuthorizedImplCopyWith<T, $Res> {
  __$$UnAuthorizedImplCopyWithImpl(
      _$UnAuthorizedImpl<T> _value, $Res Function(_$UnAuthorizedImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnAuthorizedImpl<T> extends _UnAuthorized<T> {
  const _$UnAuthorizedImpl() : super._();

  @override
  String toString() {
    return 'CommonResponseError<$T>.unAuthorized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnAuthorizedImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noNetwork,
    required TResult Function() unAuthorized,
    required TResult Function() tooManyRequests,
    required TResult Function(T error) customError,
    required TResult Function(Object? error) undefinedError,
  }) {
    return unAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noNetwork,
    TResult? Function()? unAuthorized,
    TResult? Function()? tooManyRequests,
    TResult? Function(T error)? customError,
    TResult? Function(Object? error)? undefinedError,
  }) {
    return unAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noNetwork,
    TResult Function()? unAuthorized,
    TResult Function()? tooManyRequests,
    TResult Function(T error)? customError,
    TResult Function(Object? error)? undefinedError,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoNetwork<T> value) noNetwork,
    required TResult Function(_UnAuthorized<T> value) unAuthorized,
    required TResult Function(_ToManyRequests<T> value) tooManyRequests,
    required TResult Function(_CustomError<T> value) customError,
    required TResult Function(_UndefinedError<T> value) undefinedError,
  }) {
    return unAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoNetwork<T> value)? noNetwork,
    TResult? Function(_UnAuthorized<T> value)? unAuthorized,
    TResult? Function(_ToManyRequests<T> value)? tooManyRequests,
    TResult? Function(_CustomError<T> value)? customError,
    TResult? Function(_UndefinedError<T> value)? undefinedError,
  }) {
    return unAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoNetwork<T> value)? noNetwork,
    TResult Function(_UnAuthorized<T> value)? unAuthorized,
    TResult Function(_ToManyRequests<T> value)? tooManyRequests,
    TResult Function(_CustomError<T> value)? customError,
    TResult Function(_UndefinedError<T> value)? undefinedError,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized(this);
    }
    return orElse();
  }
}

abstract class _UnAuthorized<T> extends CommonResponseError<T> {
  const factory _UnAuthorized() = _$UnAuthorizedImpl<T>;
  const _UnAuthorized._() : super._();
}

/// @nodoc
abstract class _$$ToManyRequestsImplCopyWith<T, $Res> {
  factory _$$ToManyRequestsImplCopyWith(_$ToManyRequestsImpl<T> value,
          $Res Function(_$ToManyRequestsImpl<T>) then) =
      __$$ToManyRequestsImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ToManyRequestsImplCopyWithImpl<T, $Res>
    extends _$CommonResponseErrorCopyWithImpl<T, $Res, _$ToManyRequestsImpl<T>>
    implements _$$ToManyRequestsImplCopyWith<T, $Res> {
  __$$ToManyRequestsImplCopyWithImpl(_$ToManyRequestsImpl<T> _value,
      $Res Function(_$ToManyRequestsImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToManyRequestsImpl<T> extends _ToManyRequests<T> {
  const _$ToManyRequestsImpl() : super._();

  @override
  String toString() {
    return 'CommonResponseError<$T>.tooManyRequests()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToManyRequestsImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noNetwork,
    required TResult Function() unAuthorized,
    required TResult Function() tooManyRequests,
    required TResult Function(T error) customError,
    required TResult Function(Object? error) undefinedError,
  }) {
    return tooManyRequests();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noNetwork,
    TResult? Function()? unAuthorized,
    TResult? Function()? tooManyRequests,
    TResult? Function(T error)? customError,
    TResult? Function(Object? error)? undefinedError,
  }) {
    return tooManyRequests?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noNetwork,
    TResult Function()? unAuthorized,
    TResult Function()? tooManyRequests,
    TResult Function(T error)? customError,
    TResult Function(Object? error)? undefinedError,
    required TResult orElse(),
  }) {
    if (tooManyRequests != null) {
      return tooManyRequests();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoNetwork<T> value) noNetwork,
    required TResult Function(_UnAuthorized<T> value) unAuthorized,
    required TResult Function(_ToManyRequests<T> value) tooManyRequests,
    required TResult Function(_CustomError<T> value) customError,
    required TResult Function(_UndefinedError<T> value) undefinedError,
  }) {
    return tooManyRequests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoNetwork<T> value)? noNetwork,
    TResult? Function(_UnAuthorized<T> value)? unAuthorized,
    TResult? Function(_ToManyRequests<T> value)? tooManyRequests,
    TResult? Function(_CustomError<T> value)? customError,
    TResult? Function(_UndefinedError<T> value)? undefinedError,
  }) {
    return tooManyRequests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoNetwork<T> value)? noNetwork,
    TResult Function(_UnAuthorized<T> value)? unAuthorized,
    TResult Function(_ToManyRequests<T> value)? tooManyRequests,
    TResult Function(_CustomError<T> value)? customError,
    TResult Function(_UndefinedError<T> value)? undefinedError,
    required TResult orElse(),
  }) {
    if (tooManyRequests != null) {
      return tooManyRequests(this);
    }
    return orElse();
  }
}

abstract class _ToManyRequests<T> extends CommonResponseError<T> {
  const factory _ToManyRequests() = _$ToManyRequestsImpl<T>;
  const _ToManyRequests._() : super._();
}

/// @nodoc
abstract class _$$CustomErrorImplCopyWith<T, $Res> {
  factory _$$CustomErrorImplCopyWith(_$CustomErrorImpl<T> value,
          $Res Function(_$CustomErrorImpl<T>) then) =
      __$$CustomErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T error});
}

/// @nodoc
class __$$CustomErrorImplCopyWithImpl<T, $Res>
    extends _$CommonResponseErrorCopyWithImpl<T, $Res, _$CustomErrorImpl<T>>
    implements _$$CustomErrorImplCopyWith<T, $Res> {
  __$$CustomErrorImplCopyWithImpl(
      _$CustomErrorImpl<T> _value, $Res Function(_$CustomErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$CustomErrorImpl<T>(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$CustomErrorImpl<T> extends _CustomError<T> {
  const _$CustomErrorImpl(this.error) : super._();

  @override
  final T error;

  @override
  String toString() {
    return 'CommonResponseError<$T>.customError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomErrorImpl<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomErrorImplCopyWith<T, _$CustomErrorImpl<T>> get copyWith =>
      __$$CustomErrorImplCopyWithImpl<T, _$CustomErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noNetwork,
    required TResult Function() unAuthorized,
    required TResult Function() tooManyRequests,
    required TResult Function(T error) customError,
    required TResult Function(Object? error) undefinedError,
  }) {
    return customError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noNetwork,
    TResult? Function()? unAuthorized,
    TResult? Function()? tooManyRequests,
    TResult? Function(T error)? customError,
    TResult? Function(Object? error)? undefinedError,
  }) {
    return customError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noNetwork,
    TResult Function()? unAuthorized,
    TResult Function()? tooManyRequests,
    TResult Function(T error)? customError,
    TResult Function(Object? error)? undefinedError,
    required TResult orElse(),
  }) {
    if (customError != null) {
      return customError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoNetwork<T> value) noNetwork,
    required TResult Function(_UnAuthorized<T> value) unAuthorized,
    required TResult Function(_ToManyRequests<T> value) tooManyRequests,
    required TResult Function(_CustomError<T> value) customError,
    required TResult Function(_UndefinedError<T> value) undefinedError,
  }) {
    return customError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoNetwork<T> value)? noNetwork,
    TResult? Function(_UnAuthorized<T> value)? unAuthorized,
    TResult? Function(_ToManyRequests<T> value)? tooManyRequests,
    TResult? Function(_CustomError<T> value)? customError,
    TResult? Function(_UndefinedError<T> value)? undefinedError,
  }) {
    return customError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoNetwork<T> value)? noNetwork,
    TResult Function(_UnAuthorized<T> value)? unAuthorized,
    TResult Function(_ToManyRequests<T> value)? tooManyRequests,
    TResult Function(_CustomError<T> value)? customError,
    TResult Function(_UndefinedError<T> value)? undefinedError,
    required TResult orElse(),
  }) {
    if (customError != null) {
      return customError(this);
    }
    return orElse();
  }
}

abstract class _CustomError<T> extends CommonResponseError<T> {
  const factory _CustomError(final T error) = _$CustomErrorImpl<T>;
  const _CustomError._() : super._();

  T get error;
  @JsonKey(ignore: true)
  _$$CustomErrorImplCopyWith<T, _$CustomErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UndefinedErrorImplCopyWith<T, $Res> {
  factory _$$UndefinedErrorImplCopyWith(_$UndefinedErrorImpl<T> value,
          $Res Function(_$UndefinedErrorImpl<T>) then) =
      __$$UndefinedErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Object? error});
}

/// @nodoc
class __$$UndefinedErrorImplCopyWithImpl<T, $Res>
    extends _$CommonResponseErrorCopyWithImpl<T, $Res, _$UndefinedErrorImpl<T>>
    implements _$$UndefinedErrorImplCopyWith<T, $Res> {
  __$$UndefinedErrorImplCopyWithImpl(_$UndefinedErrorImpl<T> _value,
      $Res Function(_$UndefinedErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$UndefinedErrorImpl<T>(
      freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$UndefinedErrorImpl<T> extends _UndefinedError<T> {
  const _$UndefinedErrorImpl(this.error) : super._();

  @override
  final Object? error;

  @override
  String toString() {
    return 'CommonResponseError<$T>.undefinedError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UndefinedErrorImpl<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UndefinedErrorImplCopyWith<T, _$UndefinedErrorImpl<T>> get copyWith =>
      __$$UndefinedErrorImplCopyWithImpl<T, _$UndefinedErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noNetwork,
    required TResult Function() unAuthorized,
    required TResult Function() tooManyRequests,
    required TResult Function(T error) customError,
    required TResult Function(Object? error) undefinedError,
  }) {
    return undefinedError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noNetwork,
    TResult? Function()? unAuthorized,
    TResult? Function()? tooManyRequests,
    TResult? Function(T error)? customError,
    TResult? Function(Object? error)? undefinedError,
  }) {
    return undefinedError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noNetwork,
    TResult Function()? unAuthorized,
    TResult Function()? tooManyRequests,
    TResult Function(T error)? customError,
    TResult Function(Object? error)? undefinedError,
    required TResult orElse(),
  }) {
    if (undefinedError != null) {
      return undefinedError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoNetwork<T> value) noNetwork,
    required TResult Function(_UnAuthorized<T> value) unAuthorized,
    required TResult Function(_ToManyRequests<T> value) tooManyRequests,
    required TResult Function(_CustomError<T> value) customError,
    required TResult Function(_UndefinedError<T> value) undefinedError,
  }) {
    return undefinedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoNetwork<T> value)? noNetwork,
    TResult? Function(_UnAuthorized<T> value)? unAuthorized,
    TResult? Function(_ToManyRequests<T> value)? tooManyRequests,
    TResult? Function(_CustomError<T> value)? customError,
    TResult? Function(_UndefinedError<T> value)? undefinedError,
  }) {
    return undefinedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoNetwork<T> value)? noNetwork,
    TResult Function(_UnAuthorized<T> value)? unAuthorized,
    TResult Function(_ToManyRequests<T> value)? tooManyRequests,
    TResult Function(_CustomError<T> value)? customError,
    TResult Function(_UndefinedError<T> value)? undefinedError,
    required TResult orElse(),
  }) {
    if (undefinedError != null) {
      return undefinedError(this);
    }
    return orElse();
  }
}

abstract class _UndefinedError<T> extends CommonResponseError<T> {
  const factory _UndefinedError(final Object? error) = _$UndefinedErrorImpl<T>;
  const _UndefinedError._() : super._();

  Object? get error;
  @JsonKey(ignore: true)
  _$$UndefinedErrorImplCopyWith<T, _$UndefinedErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

DefaultApiError _$DefaultApiErrorFromJson(Map<String, dynamic> json) {
  return _DefaultApiError.fromJson(json);
}

/// @nodoc
mixin _$DefaultApiError {
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DefaultApiErrorCopyWith<DefaultApiError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultApiErrorCopyWith<$Res> {
  factory $DefaultApiErrorCopyWith(
          DefaultApiError value, $Res Function(DefaultApiError) then) =
      _$DefaultApiErrorCopyWithImpl<$Res, DefaultApiError>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class _$DefaultApiErrorCopyWithImpl<$Res, $Val extends DefaultApiError>
    implements $DefaultApiErrorCopyWith<$Res> {
  _$DefaultApiErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DefaultApiErrorImplCopyWith<$Res>
    implements $DefaultApiErrorCopyWith<$Res> {
  factory _$$DefaultApiErrorImplCopyWith(_$DefaultApiErrorImpl value,
          $Res Function(_$DefaultApiErrorImpl) then) =
      __$$DefaultApiErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$DefaultApiErrorImplCopyWithImpl<$Res>
    extends _$DefaultApiErrorCopyWithImpl<$Res, _$DefaultApiErrorImpl>
    implements _$$DefaultApiErrorImplCopyWith<$Res> {
  __$$DefaultApiErrorImplCopyWithImpl(
      _$DefaultApiErrorImpl _value, $Res Function(_$DefaultApiErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$DefaultApiErrorImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DefaultApiErrorImpl implements _DefaultApiError {
  const _$DefaultApiErrorImpl({required this.code});

  factory _$DefaultApiErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$DefaultApiErrorImplFromJson(json);

  @override
  final String code;

  @override
  String toString() {
    return 'DefaultApiError(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultApiErrorImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultApiErrorImplCopyWith<_$DefaultApiErrorImpl> get copyWith =>
      __$$DefaultApiErrorImplCopyWithImpl<_$DefaultApiErrorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DefaultApiErrorImplToJson(
      this,
    );
  }
}

abstract class _DefaultApiError implements DefaultApiError {
  const factory _DefaultApiError({required final String code}) =
      _$DefaultApiErrorImpl;

  factory _DefaultApiError.fromJson(Map<String, dynamic> json) =
      _$DefaultApiErrorImpl.fromJson;

  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$DefaultApiErrorImplCopyWith<_$DefaultApiErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
