// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageModelImpl _$$MessageModelImplFromJson(Map<String, dynamic> json) =>
    _$MessageModelImpl(
      uid: json['uid'] as String,
      text: json['text'] as String,
      time: json['time'] as int,
      senderUid: json['sender_uid'] as String,
      receiverUid: json['receiver_uid'] as String,
      roomId: json['room_id'] as String,
      isSeen: json['is_seen'] as bool? ?? false,
      imageUrl: json['image_url'] as String?,
      documentUrl: json['document_url'] as String?,
    );

Map<String, dynamic> _$$MessageModelImplToJson(_$MessageModelImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'text': instance.text,
      'time': instance.time,
      'sender_uid': instance.senderUid,
      'receiver_uid': instance.receiverUid,
      'room_id': instance.roomId,
      'is_seen': instance.isSeen,
      'image_url': instance.imageUrl,
      'document_url': instance.documentUrl,
    };
