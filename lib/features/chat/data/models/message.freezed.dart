// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Message {
  String get uid => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;
  MessageType get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String uid, String text, DateTime time, MessageType type)
        text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid, String text, DateTime time, MessageType type)?
        text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid, String text, DateTime time, MessageType type)?
        text,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextMessage value) text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TextMessage value)? text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextMessage value)? text,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call({String uid, String text, DateTime time, MessageType type});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? text = null,
    Object? time = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextMessageImplCopyWith<$Res>
    implements $MessageCopyWith<$Res> {
  factory _$$TextMessageImplCopyWith(
          _$TextMessageImpl value, $Res Function(_$TextMessageImpl) then) =
      __$$TextMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String text, DateTime time, MessageType type});
}

/// @nodoc
class __$$TextMessageImplCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$TextMessageImpl>
    implements _$$TextMessageImplCopyWith<$Res> {
  __$$TextMessageImplCopyWithImpl(
      _$TextMessageImpl _value, $Res Function(_$TextMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? text = null,
    Object? time = null,
    Object? type = null,
  }) {
    return _then(_$TextMessageImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageType,
    ));
  }
}

/// @nodoc

class _$TextMessageImpl implements _TextMessage {
  const _$TextMessageImpl(
      {required this.uid,
      required this.text,
      required this.time,
      required this.type});

  @override
  final String uid;
  @override
  final String text;
  @override
  final DateTime time;
  @override
  final MessageType type;

  @override
  String toString() {
    return 'Message.text(uid: $uid, text: $text, time: $time, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextMessageImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid, text, time, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextMessageImplCopyWith<_$TextMessageImpl> get copyWith =>
      __$$TextMessageImplCopyWithImpl<_$TextMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String uid, String text, DateTime time, MessageType type)
        text,
  }) {
    return text(uid, this.text, time, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid, String text, DateTime time, MessageType type)?
        text,
  }) {
    return text?.call(uid, this.text, time, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid, String text, DateTime time, MessageType type)?
        text,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(uid, this.text, time, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextMessage value) text,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TextMessage value)? text,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextMessage value)? text,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class _TextMessage implements Message {
  const factory _TextMessage(
      {required final String uid,
      required final String text,
      required final DateTime time,
      required final MessageType type}) = _$TextMessageImpl;

  @override
  String get uid;
  @override
  String get text;
  @override
  DateTime get time;
  @override
  MessageType get type;
  @override
  @JsonKey(ignore: true)
  _$$TextMessageImplCopyWith<_$TextMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
