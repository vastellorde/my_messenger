// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      username: json['username'] as String,
      email: json['email'] as String,
      id: json['id'] as String,
      isOnline: json['is_online'] as bool,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'id': instance.id,
      'is_online': instance.isOnline,
      'avatar': instance.avatar,
    };
