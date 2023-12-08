// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      username: json['username'] as String,
      email: json['email'] as String,
      id: json['id'] as String,
      isOnline: json['is_online'] as bool,
      roomIds: (json['room_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'id': instance.id,
      'is_online': instance.isOnline,
      'room_ids': instance.roomIds,
    };
