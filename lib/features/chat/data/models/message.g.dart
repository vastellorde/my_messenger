// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      uid: json['uid'] as String,
      text: json['text'] as String,
      time: DateTime.parse(json['time'] as String),
      senderUid: json['sender_uid'] as String,
      receiverUid: json['receiver_uid'] as String,
      roomId: json['room_id'] as String,
      imageUrl: json['image_url'] as String?,
      documentUrl: json['document_url'] as String?,
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'text': instance.text,
      'time': instance.time.toIso8601String(),
      'sender_uid': instance.senderUid,
      'receiver_uid': instance.receiverUid,
      'room_id': instance.roomId,
      'image_url': instance.imageUrl,
      'document_url': instance.documentUrl,
    };
