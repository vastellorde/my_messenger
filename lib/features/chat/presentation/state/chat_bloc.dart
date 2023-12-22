import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_messenger/features/chat/domain/entity/message_entity.dart';
import 'package:my_messenger/features/chat/domain/usecase/get_messages.dart';
import 'package:my_messenger/features/chat/domain/usecase/send_message.dart';
import 'package:my_messenger/features/user/domain/entities/user_entity.dart';
import 'package:my_messenger/features/user/domain/usecases/get_user.dart';

part 'chat_bloc_models.dart';
part 'chat_bloc.freezed.dart';

@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final GetMessages _getMessages;
  final SendMessage _sendMessage;
  final GetUser _getUser;
  StreamSubscription<Iterable<MessageEntity>>? _subscription;
  ChatBloc(
    this._getMessages,
    this._sendMessage,
    this._getUser,
  ) : super(ChatState.empty()) {
    on<ChatEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(ChatEvent event, Emitter<ChatState> emit) {
    event.when(
      init: _onInit,
      update: (list) {
        emit(state.copyWith(messageList: list));
      },
      updateReceiver: (receiver) {
        emit(state.copyWith(receiver: receiver));
      },
      sendMessage: (params) async {
        await _sendMessage(params);
      },
    );
  }

  FutureOr<void> _onInit(String roomId, List<String> members) async {
    if (_subscription != null) {
      return;
    }
    final userId = FirebaseAuth.instance.currentUser?.uid;
    if (userId == null) {
      return;
    }
    final res = await _getMessages(GetMessageParams(roomId));
    final receiverId = members.firstWhere((element) => element != userId,
        orElse: () => members.first);
    final receiverRes = await _getUser(GetUserParams(receiverId));

    if (receiverRes.isRight) {
      add(ChatEvent.updateReceiver(receiverRes.right));
    }

    if (res.isLeft) {
      add(const ChatEvent.update([]));
    } else {
      _subscription = res.right.listen((event) {
        add(ChatEvent.update(event.toList()));
      });
    }
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
