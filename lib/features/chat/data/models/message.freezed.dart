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

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  String get uid => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;
  String get senderUid => throw _privateConstructorUsedError;
  String get receiverUid => throw _privateConstructorUsedError;
  String get roomId => throw _privateConstructorUsedError;
  bool get isSeen => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get documentUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call(
      {String uid,
      String text,
      DateTime time,
      String senderUid,
      String receiverUid,
      String roomId,
      bool isSeen,
      String? imageUrl,
      String? documentUrl});
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
    Object? senderUid = null,
    Object? receiverUid = null,
    Object? roomId = null,
    Object? isSeen = null,
    Object? imageUrl = freezed,
    Object? documentUrl = freezed,
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
      senderUid: null == senderUid
          ? _value.senderUid
          : senderUid // ignore: cast_nullable_to_non_nullable
              as String,
      receiverUid: null == receiverUid
          ? _value.receiverUid
          : receiverUid // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      isSeen: null == isSeen
          ? _value.isSeen
          : isSeen // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      documentUrl: freezed == documentUrl
          ? _value.documentUrl
          : documentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageImplCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$MessageImplCopyWith(
          _$MessageImpl value, $Res Function(_$MessageImpl) then) =
      __$$MessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String text,
      DateTime time,
      String senderUid,
      String receiverUid,
      String roomId,
      bool isSeen,
      String? imageUrl,
      String? documentUrl});
}

/// @nodoc
class __$$MessageImplCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$MessageImpl>
    implements _$$MessageImplCopyWith<$Res> {
  __$$MessageImplCopyWithImpl(
      _$MessageImpl _value, $Res Function(_$MessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? text = null,
    Object? time = null,
    Object? senderUid = null,
    Object? receiverUid = null,
    Object? roomId = null,
    Object? isSeen = null,
    Object? imageUrl = freezed,
    Object? documentUrl = freezed,
  }) {
    return _then(_$MessageImpl(
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
      senderUid: null == senderUid
          ? _value.senderUid
          : senderUid // ignore: cast_nullable_to_non_nullable
              as String,
      receiverUid: null == receiverUid
          ? _value.receiverUid
          : receiverUid // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      isSeen: null == isSeen
          ? _value.isSeen
          : isSeen // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      documentUrl: freezed == documentUrl
          ? _value.documentUrl
          : documentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageImpl implements _Message {
  const _$MessageImpl(
      {required this.uid,
      required this.text,
      required this.time,
      required this.senderUid,
      required this.receiverUid,
      required this.roomId,
      this.isSeen = false,
      this.imageUrl,
      this.documentUrl});

  factory _$MessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageImplFromJson(json);

  @override
  final String uid;
  @override
  final String text;
  @override
  final DateTime time;
  @override
  final String senderUid;
  @override
  final String receiverUid;
  @override
  final String roomId;
  @override
  @JsonKey()
  final bool isSeen;
  @override
  final String? imageUrl;
  @override
  final String? documentUrl;

  @override
  String toString() {
    return 'Message(uid: $uid, text: $text, time: $time, senderUid: $senderUid, receiverUid: $receiverUid, roomId: $roomId, isSeen: $isSeen, imageUrl: $imageUrl, documentUrl: $documentUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.senderUid, senderUid) ||
                other.senderUid == senderUid) &&
            (identical(other.receiverUid, receiverUid) ||
                other.receiverUid == receiverUid) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.isSeen, isSeen) || other.isSeen == isSeen) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.documentUrl, documentUrl) ||
                other.documentUrl == documentUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, text, time, senderUid,
      receiverUid, roomId, isSeen, imageUrl, documentUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      __$$MessageImplCopyWithImpl<_$MessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageImplToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  const factory _Message(
      {required final String uid,
      required final String text,
      required final DateTime time,
      required final String senderUid,
      required final String receiverUid,
      required final String roomId,
      final bool isSeen,
      final String? imageUrl,
      final String? documentUrl}) = _$MessageImpl;

  factory _Message.fromJson(Map<String, dynamic> json) = _$MessageImpl.fromJson;

  @override
  String get uid;
  @override
  String get text;
  @override
  DateTime get time;
  @override
  String get senderUid;
  @override
  String get receiverUid;
  @override
  String get roomId;
  @override
  bool get isSeen;
  @override
  String? get imageUrl;
  @override
  String? get documentUrl;
  @override
  @JsonKey(ignore: true)
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
