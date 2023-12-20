// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatListEvent {}

/// @nodoc
abstract class $ChatListEventCopyWith<$Res> {
  factory $ChatListEventCopyWith(
          ChatListEvent value, $Res Function(ChatListEvent) then) =
      _$ChatListEventCopyWithImpl<$Res, ChatListEvent>;
}

/// @nodoc
class _$ChatListEventCopyWithImpl<$Res, $Val extends ChatListEvent>
    implements $ChatListEventCopyWith<$Res> {
  _$ChatListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChatListEventImplCopyWith<$Res> {
  factory _$$ChatListEventImplCopyWith(
          _$ChatListEventImpl value, $Res Function(_$ChatListEventImpl) then) =
      __$$ChatListEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatListEventImplCopyWithImpl<$Res>
    extends _$ChatListEventCopyWithImpl<$Res, _$ChatListEventImpl>
    implements _$$ChatListEventImplCopyWith<$Res> {
  __$$ChatListEventImplCopyWithImpl(
      _$ChatListEventImpl _value, $Res Function(_$ChatListEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatListEventImpl implements _ChatListEvent {
  const _$ChatListEventImpl();

  @override
  String toString() {
    return 'ChatListEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatListEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _ChatListEvent implements ChatListEvent {
  const factory _ChatListEvent() = _$ChatListEventImpl;
}

/// @nodoc
mixin _$ChatListState {
  List<ChatRoomEntity> get chatRooms => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatListStateCopyWith<ChatListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatListStateCopyWith<$Res> {
  factory $ChatListStateCopyWith(
          ChatListState value, $Res Function(ChatListState) then) =
      _$ChatListStateCopyWithImpl<$Res, ChatListState>;
  @useResult
  $Res call({List<ChatRoomEntity> chatRooms});
}

/// @nodoc
class _$ChatListStateCopyWithImpl<$Res, $Val extends ChatListState>
    implements $ChatListStateCopyWith<$Res> {
  _$ChatListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatRooms = null,
  }) {
    return _then(_value.copyWith(
      chatRooms: null == chatRooms
          ? _value.chatRooms
          : chatRooms // ignore: cast_nullable_to_non_nullable
              as List<ChatRoomEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatListStateImplCopyWith<$Res>
    implements $ChatListStateCopyWith<$Res> {
  factory _$$ChatListStateImplCopyWith(
          _$ChatListStateImpl value, $Res Function(_$ChatListStateImpl) then) =
      __$$ChatListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ChatRoomEntity> chatRooms});
}

/// @nodoc
class __$$ChatListStateImplCopyWithImpl<$Res>
    extends _$ChatListStateCopyWithImpl<$Res, _$ChatListStateImpl>
    implements _$$ChatListStateImplCopyWith<$Res> {
  __$$ChatListStateImplCopyWithImpl(
      _$ChatListStateImpl _value, $Res Function(_$ChatListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatRooms = null,
  }) {
    return _then(_$ChatListStateImpl(
      null == chatRooms
          ? _value._chatRooms
          : chatRooms // ignore: cast_nullable_to_non_nullable
              as List<ChatRoomEntity>,
    ));
  }
}

/// @nodoc

class _$ChatListStateImpl implements _ChatListState {
  const _$ChatListStateImpl(final List<ChatRoomEntity> chatRooms)
      : _chatRooms = chatRooms;

  final List<ChatRoomEntity> _chatRooms;
  @override
  List<ChatRoomEntity> get chatRooms {
    if (_chatRooms is EqualUnmodifiableListView) return _chatRooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chatRooms);
  }

  @override
  String toString() {
    return 'ChatListState(chatRooms: $chatRooms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatListStateImpl &&
            const DeepCollectionEquality()
                .equals(other._chatRooms, _chatRooms));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_chatRooms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatListStateImplCopyWith<_$ChatListStateImpl> get copyWith =>
      __$$ChatListStateImplCopyWithImpl<_$ChatListStateImpl>(this, _$identity);
}

abstract class _ChatListState implements ChatListState {
  const factory _ChatListState(final List<ChatRoomEntity> chatRooms) =
      _$ChatListStateImpl;

  @override
  List<ChatRoomEntity> get chatRooms;
  @override
  @JsonKey(ignore: true)
  _$$ChatListStateImplCopyWith<_$ChatListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
