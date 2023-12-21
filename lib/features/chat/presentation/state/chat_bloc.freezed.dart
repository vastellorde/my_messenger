// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomId, List<String> members) init,
    required TResult Function(List<MessageEntity> messageList) update,
    required TResult Function(UserEntity receiver) updateReceiver,
    required TResult Function(SendMessageParams params) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roomId, List<String> members)? init,
    TResult? Function(List<MessageEntity> messageList)? update,
    TResult? Function(UserEntity receiver)? updateReceiver,
    TResult? Function(SendMessageParams params)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomId, List<String> members)? init,
    TResult Function(List<MessageEntity> messageList)? update,
    TResult Function(UserEntity receiver)? updateReceiver,
    TResult Function(SendMessageParams params)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitChat value) init,
    required TResult Function(_UpdateChat value) update,
    required TResult Function(_UpdateReceiverChat value) updateReceiver,
    required TResult Function(_SendMessage value) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitChat value)? init,
    TResult? Function(_UpdateChat value)? update,
    TResult? Function(_UpdateReceiverChat value)? updateReceiver,
    TResult? Function(_SendMessage value)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitChat value)? init,
    TResult Function(_UpdateChat value)? update,
    TResult Function(_UpdateReceiverChat value)? updateReceiver,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitChatImplCopyWith<$Res> {
  factory _$$InitChatImplCopyWith(
          _$InitChatImpl value, $Res Function(_$InitChatImpl) then) =
      __$$InitChatImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String roomId, List<String> members});
}

/// @nodoc
class __$$InitChatImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$InitChatImpl>
    implements _$$InitChatImplCopyWith<$Res> {
  __$$InitChatImplCopyWithImpl(
      _$InitChatImpl _value, $Res Function(_$InitChatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? members = null,
  }) {
    return _then(_$InitChatImpl(
      null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$InitChatImpl implements _InitChat {
  const _$InitChatImpl(this.roomId, final List<String> members)
      : _members = members;

  @override
  final String roomId;
  final List<String> _members;
  @override
  List<String> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  String toString() {
    return 'ChatEvent.init(roomId: $roomId, members: $members)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitChatImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, roomId, const DeepCollectionEquality().hash(_members));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitChatImplCopyWith<_$InitChatImpl> get copyWith =>
      __$$InitChatImplCopyWithImpl<_$InitChatImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomId, List<String> members) init,
    required TResult Function(List<MessageEntity> messageList) update,
    required TResult Function(UserEntity receiver) updateReceiver,
    required TResult Function(SendMessageParams params) sendMessage,
  }) {
    return init(roomId, members);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roomId, List<String> members)? init,
    TResult? Function(List<MessageEntity> messageList)? update,
    TResult? Function(UserEntity receiver)? updateReceiver,
    TResult? Function(SendMessageParams params)? sendMessage,
  }) {
    return init?.call(roomId, members);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomId, List<String> members)? init,
    TResult Function(List<MessageEntity> messageList)? update,
    TResult Function(UserEntity receiver)? updateReceiver,
    TResult Function(SendMessageParams params)? sendMessage,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(roomId, members);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitChat value) init,
    required TResult Function(_UpdateChat value) update,
    required TResult Function(_UpdateReceiverChat value) updateReceiver,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitChat value)? init,
    TResult? Function(_UpdateChat value)? update,
    TResult? Function(_UpdateReceiverChat value)? updateReceiver,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitChat value)? init,
    TResult Function(_UpdateChat value)? update,
    TResult Function(_UpdateReceiverChat value)? updateReceiver,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _InitChat implements ChatEvent {
  const factory _InitChat(final String roomId, final List<String> members) =
      _$InitChatImpl;

  String get roomId;
  List<String> get members;
  @JsonKey(ignore: true)
  _$$InitChatImplCopyWith<_$InitChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateChatImplCopyWith<$Res> {
  factory _$$UpdateChatImplCopyWith(
          _$UpdateChatImpl value, $Res Function(_$UpdateChatImpl) then) =
      __$$UpdateChatImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MessageEntity> messageList});
}

/// @nodoc
class __$$UpdateChatImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$UpdateChatImpl>
    implements _$$UpdateChatImplCopyWith<$Res> {
  __$$UpdateChatImplCopyWithImpl(
      _$UpdateChatImpl _value, $Res Function(_$UpdateChatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageList = null,
  }) {
    return _then(_$UpdateChatImpl(
      null == messageList
          ? _value._messageList
          : messageList // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>,
    ));
  }
}

/// @nodoc

class _$UpdateChatImpl implements _UpdateChat {
  const _$UpdateChatImpl(final List<MessageEntity> messageList)
      : _messageList = messageList;

  final List<MessageEntity> _messageList;
  @override
  List<MessageEntity> get messageList {
    if (_messageList is EqualUnmodifiableListView) return _messageList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messageList);
  }

  @override
  String toString() {
    return 'ChatEvent.update(messageList: $messageList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateChatImpl &&
            const DeepCollectionEquality()
                .equals(other._messageList, _messageList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_messageList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateChatImplCopyWith<_$UpdateChatImpl> get copyWith =>
      __$$UpdateChatImplCopyWithImpl<_$UpdateChatImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomId, List<String> members) init,
    required TResult Function(List<MessageEntity> messageList) update,
    required TResult Function(UserEntity receiver) updateReceiver,
    required TResult Function(SendMessageParams params) sendMessage,
  }) {
    return update(messageList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roomId, List<String> members)? init,
    TResult? Function(List<MessageEntity> messageList)? update,
    TResult? Function(UserEntity receiver)? updateReceiver,
    TResult? Function(SendMessageParams params)? sendMessage,
  }) {
    return update?.call(messageList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomId, List<String> members)? init,
    TResult Function(List<MessageEntity> messageList)? update,
    TResult Function(UserEntity receiver)? updateReceiver,
    TResult Function(SendMessageParams params)? sendMessage,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(messageList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitChat value) init,
    required TResult Function(_UpdateChat value) update,
    required TResult Function(_UpdateReceiverChat value) updateReceiver,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitChat value)? init,
    TResult? Function(_UpdateChat value)? update,
    TResult? Function(_UpdateReceiverChat value)? updateReceiver,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitChat value)? init,
    TResult Function(_UpdateChat value)? update,
    TResult Function(_UpdateReceiverChat value)? updateReceiver,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateChat implements ChatEvent {
  const factory _UpdateChat(final List<MessageEntity> messageList) =
      _$UpdateChatImpl;

  List<MessageEntity> get messageList;
  @JsonKey(ignore: true)
  _$$UpdateChatImplCopyWith<_$UpdateChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateReceiverChatImplCopyWith<$Res> {
  factory _$$UpdateReceiverChatImplCopyWith(_$UpdateReceiverChatImpl value,
          $Res Function(_$UpdateReceiverChatImpl) then) =
      __$$UpdateReceiverChatImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity receiver});

  $UserEntityCopyWith<$Res> get receiver;
}

/// @nodoc
class __$$UpdateReceiverChatImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$UpdateReceiverChatImpl>
    implements _$$UpdateReceiverChatImplCopyWith<$Res> {
  __$$UpdateReceiverChatImplCopyWithImpl(_$UpdateReceiverChatImpl _value,
      $Res Function(_$UpdateReceiverChatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiver = null,
  }) {
    return _then(_$UpdateReceiverChatImpl(
      null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get receiver {
    return $UserEntityCopyWith<$Res>(_value.receiver, (value) {
      return _then(_value.copyWith(receiver: value));
    });
  }
}

/// @nodoc

class _$UpdateReceiverChatImpl implements _UpdateReceiverChat {
  const _$UpdateReceiverChatImpl(this.receiver);

  @override
  final UserEntity receiver;

  @override
  String toString() {
    return 'ChatEvent.updateReceiver(receiver: $receiver)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateReceiverChatImpl &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver));
  }

  @override
  int get hashCode => Object.hash(runtimeType, receiver);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateReceiverChatImplCopyWith<_$UpdateReceiverChatImpl> get copyWith =>
      __$$UpdateReceiverChatImplCopyWithImpl<_$UpdateReceiverChatImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomId, List<String> members) init,
    required TResult Function(List<MessageEntity> messageList) update,
    required TResult Function(UserEntity receiver) updateReceiver,
    required TResult Function(SendMessageParams params) sendMessage,
  }) {
    return updateReceiver(receiver);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roomId, List<String> members)? init,
    TResult? Function(List<MessageEntity> messageList)? update,
    TResult? Function(UserEntity receiver)? updateReceiver,
    TResult? Function(SendMessageParams params)? sendMessage,
  }) {
    return updateReceiver?.call(receiver);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomId, List<String> members)? init,
    TResult Function(List<MessageEntity> messageList)? update,
    TResult Function(UserEntity receiver)? updateReceiver,
    TResult Function(SendMessageParams params)? sendMessage,
    required TResult orElse(),
  }) {
    if (updateReceiver != null) {
      return updateReceiver(receiver);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitChat value) init,
    required TResult Function(_UpdateChat value) update,
    required TResult Function(_UpdateReceiverChat value) updateReceiver,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return updateReceiver(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitChat value)? init,
    TResult? Function(_UpdateChat value)? update,
    TResult? Function(_UpdateReceiverChat value)? updateReceiver,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return updateReceiver?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitChat value)? init,
    TResult Function(_UpdateChat value)? update,
    TResult Function(_UpdateReceiverChat value)? updateReceiver,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (updateReceiver != null) {
      return updateReceiver(this);
    }
    return orElse();
  }
}

abstract class _UpdateReceiverChat implements ChatEvent {
  const factory _UpdateReceiverChat(final UserEntity receiver) =
      _$UpdateReceiverChatImpl;

  UserEntity get receiver;
  @JsonKey(ignore: true)
  _$$UpdateReceiverChatImplCopyWith<_$UpdateReceiverChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
          _$SendMessageImpl value, $Res Function(_$SendMessageImpl) then) =
      __$$SendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SendMessageParams params});
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
      _$SendMessageImpl _value, $Res Function(_$SendMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$SendMessageImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as SendMessageParams,
    ));
  }
}

/// @nodoc

class _$SendMessageImpl implements _SendMessage {
  const _$SendMessageImpl(this.params);

  @override
  final SendMessageParams params;

  @override
  String toString() {
    return 'ChatEvent.sendMessage(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomId, List<String> members) init,
    required TResult Function(List<MessageEntity> messageList) update,
    required TResult Function(UserEntity receiver) updateReceiver,
    required TResult Function(SendMessageParams params) sendMessage,
  }) {
    return sendMessage(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roomId, List<String> members)? init,
    TResult? Function(List<MessageEntity> messageList)? update,
    TResult? Function(UserEntity receiver)? updateReceiver,
    TResult? Function(SendMessageParams params)? sendMessage,
  }) {
    return sendMessage?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomId, List<String> members)? init,
    TResult Function(List<MessageEntity> messageList)? update,
    TResult Function(UserEntity receiver)? updateReceiver,
    TResult Function(SendMessageParams params)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitChat value) init,
    required TResult Function(_UpdateChat value) update,
    required TResult Function(_UpdateReceiverChat value) updateReceiver,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitChat value)? init,
    TResult? Function(_UpdateChat value)? update,
    TResult? Function(_UpdateReceiverChat value)? updateReceiver,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitChat value)? init,
    TResult Function(_UpdateChat value)? update,
    TResult Function(_UpdateReceiverChat value)? updateReceiver,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements ChatEvent {
  const factory _SendMessage(final SendMessageParams params) =
      _$SendMessageImpl;

  SendMessageParams get params;
  @JsonKey(ignore: true)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  List<MessageEntity> get messageList => throw _privateConstructorUsedError;
  UserEntity get receiver => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call({List<MessageEntity> messageList, UserEntity receiver});

  $UserEntityCopyWith<$Res> get receiver;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageList = null,
    Object? receiver = null,
  }) {
    return _then(_value.copyWith(
      messageList: null == messageList
          ? _value.messageList
          : messageList // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>,
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get receiver {
    return $UserEntityCopyWith<$Res>(_value.receiver, (value) {
      return _then(_value.copyWith(receiver: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatStateImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatStateImplCopyWith(
          _$ChatStateImpl value, $Res Function(_$ChatStateImpl) then) =
      __$$ChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MessageEntity> messageList, UserEntity receiver});

  @override
  $UserEntityCopyWith<$Res> get receiver;
}

/// @nodoc
class __$$ChatStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateImpl>
    implements _$$ChatStateImplCopyWith<$Res> {
  __$$ChatStateImplCopyWithImpl(
      _$ChatStateImpl _value, $Res Function(_$ChatStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageList = null,
    Object? receiver = null,
  }) {
    return _then(_$ChatStateImpl(
      messageList: null == messageList
          ? _value._messageList
          : messageList // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>,
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc

class _$ChatStateImpl implements _ChatState {
  const _$ChatStateImpl(
      {required final List<MessageEntity> messageList, required this.receiver})
      : _messageList = messageList;

  final List<MessageEntity> _messageList;
  @override
  List<MessageEntity> get messageList {
    if (_messageList is EqualUnmodifiableListView) return _messageList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messageList);
  }

  @override
  final UserEntity receiver;

  @override
  String toString() {
    return 'ChatState(messageList: $messageList, receiver: $receiver)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateImpl &&
            const DeepCollectionEquality()
                .equals(other._messageList, _messageList) &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_messageList), receiver);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      __$$ChatStateImplCopyWithImpl<_$ChatStateImpl>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {required final List<MessageEntity> messageList,
      required final UserEntity receiver}) = _$ChatStateImpl;

  @override
  List<MessageEntity> get messageList;
  @override
  UserEntity get receiver;
  @override
  @JsonKey(ignore: true)
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
