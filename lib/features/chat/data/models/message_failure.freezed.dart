// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessageFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() cantSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? cantSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? cantSend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnknownMessageFailure value) unknown,
    required TResult Function(_CantSendMessageFailure value) cantSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnknownMessageFailure value)? unknown,
    TResult? Function(_CantSendMessageFailure value)? cantSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownMessageFailure value)? unknown,
    TResult Function(_CantSendMessageFailure value)? cantSend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageFailureCopyWith<$Res> {
  factory $MessageFailureCopyWith(
          MessageFailure value, $Res Function(MessageFailure) then) =
      _$MessageFailureCopyWithImpl<$Res, MessageFailure>;
}

/// @nodoc
class _$MessageFailureCopyWithImpl<$Res, $Val extends MessageFailure>
    implements $MessageFailureCopyWith<$Res> {
  _$MessageFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnknownMessageFailureImplCopyWith<$Res> {
  factory _$$UnknownMessageFailureImplCopyWith(
          _$UnknownMessageFailureImpl value,
          $Res Function(_$UnknownMessageFailureImpl) then) =
      __$$UnknownMessageFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownMessageFailureImplCopyWithImpl<$Res>
    extends _$MessageFailureCopyWithImpl<$Res, _$UnknownMessageFailureImpl>
    implements _$$UnknownMessageFailureImplCopyWith<$Res> {
  __$$UnknownMessageFailureImplCopyWithImpl(_$UnknownMessageFailureImpl _value,
      $Res Function(_$UnknownMessageFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnknownMessageFailureImpl implements _UnknownMessageFailure {
  const _$UnknownMessageFailureImpl();

  @override
  String toString() {
    return 'MessageFailure.unknown()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownMessageFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() cantSend,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? cantSend,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? cantSend,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnknownMessageFailure value) unknown,
    required TResult Function(_CantSendMessageFailure value) cantSend,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnknownMessageFailure value)? unknown,
    TResult? Function(_CantSendMessageFailure value)? cantSend,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownMessageFailure value)? unknown,
    TResult Function(_CantSendMessageFailure value)? cantSend,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _UnknownMessageFailure implements MessageFailure {
  const factory _UnknownMessageFailure() = _$UnknownMessageFailureImpl;
}

/// @nodoc
abstract class _$$CantSendMessageFailureImplCopyWith<$Res> {
  factory _$$CantSendMessageFailureImplCopyWith(
          _$CantSendMessageFailureImpl value,
          $Res Function(_$CantSendMessageFailureImpl) then) =
      __$$CantSendMessageFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CantSendMessageFailureImplCopyWithImpl<$Res>
    extends _$MessageFailureCopyWithImpl<$Res, _$CantSendMessageFailureImpl>
    implements _$$CantSendMessageFailureImplCopyWith<$Res> {
  __$$CantSendMessageFailureImplCopyWithImpl(
      _$CantSendMessageFailureImpl _value,
      $Res Function(_$CantSendMessageFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CantSendMessageFailureImpl implements _CantSendMessageFailure {
  const _$CantSendMessageFailureImpl();

  @override
  String toString() {
    return 'MessageFailure.cantSend()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CantSendMessageFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() cantSend,
  }) {
    return cantSend();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? cantSend,
  }) {
    return cantSend?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? cantSend,
    required TResult orElse(),
  }) {
    if (cantSend != null) {
      return cantSend();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnknownMessageFailure value) unknown,
    required TResult Function(_CantSendMessageFailure value) cantSend,
  }) {
    return cantSend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnknownMessageFailure value)? unknown,
    TResult? Function(_CantSendMessageFailure value)? cantSend,
  }) {
    return cantSend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownMessageFailure value)? unknown,
    TResult Function(_CantSendMessageFailure value)? cantSend,
    required TResult orElse(),
  }) {
    if (cantSend != null) {
      return cantSend(this);
    }
    return orElse();
  }
}

abstract class _CantSendMessageFailure implements MessageFailure {
  const factory _CantSendMessageFailure() = _$CantSendMessageFailureImpl;
}
