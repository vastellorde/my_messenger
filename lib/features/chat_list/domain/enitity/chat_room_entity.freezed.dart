// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_room_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatRoomEntity {
  String get id => throw _privateConstructorUsedError;
  List<String> get members => throw _privateConstructorUsedError;
  List<MessageModel> get messages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatRoomEntityCopyWith<ChatRoomEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomEntityCopyWith<$Res> {
  factory $ChatRoomEntityCopyWith(
          ChatRoomEntity value, $Res Function(ChatRoomEntity) then) =
      _$ChatRoomEntityCopyWithImpl<$Res, ChatRoomEntity>;
  @useResult
  $Res call({String id, List<String> members, List<MessageModel> messages});
}

/// @nodoc
class _$ChatRoomEntityCopyWithImpl<$Res, $Val extends ChatRoomEntity>
    implements $ChatRoomEntityCopyWith<$Res> {
  _$ChatRoomEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? members = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatRoomEntityImplCopyWith<$Res>
    implements $ChatRoomEntityCopyWith<$Res> {
  factory _$$ChatRoomEntityImplCopyWith(_$ChatRoomEntityImpl value,
          $Res Function(_$ChatRoomEntityImpl) then) =
      __$$ChatRoomEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<String> members, List<MessageModel> messages});
}

/// @nodoc
class __$$ChatRoomEntityImplCopyWithImpl<$Res>
    extends _$ChatRoomEntityCopyWithImpl<$Res, _$ChatRoomEntityImpl>
    implements _$$ChatRoomEntityImplCopyWith<$Res> {
  __$$ChatRoomEntityImplCopyWithImpl(
      _$ChatRoomEntityImpl _value, $Res Function(_$ChatRoomEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? members = null,
    Object? messages = null,
  }) {
    return _then(_$ChatRoomEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
    ));
  }
}

/// @nodoc

class _$ChatRoomEntityImpl extends _ChatRoomEntity {
  const _$ChatRoomEntityImpl(
      {required this.id,
      required final List<String> members,
      final List<MessageModel> messages = const []})
      : _members = members,
        _messages = messages,
        super._();

  @override
  final String id;
  final List<String> _members;
  @override
  List<String> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  final List<MessageModel> _messages;
  @override
  @JsonKey()
  List<MessageModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatRoomEntity(id: $id, members: $members, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatRoomEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_members),
      const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatRoomEntityImplCopyWith<_$ChatRoomEntityImpl> get copyWith =>
      __$$ChatRoomEntityImplCopyWithImpl<_$ChatRoomEntityImpl>(
          this, _$identity);
}

abstract class _ChatRoomEntity extends ChatRoomEntity {
  const factory _ChatRoomEntity(
      {required final String id,
      required final List<String> members,
      final List<MessageModel> messages}) = _$ChatRoomEntityImpl;
  const _ChatRoomEntity._() : super._();

  @override
  String get id;
  @override
  List<String> get members;
  @override
  List<MessageModel> get messages;
  @override
  @JsonKey(ignore: true)
  _$$ChatRoomEntityImplCopyWith<_$ChatRoomEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
