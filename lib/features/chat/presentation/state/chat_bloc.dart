import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_messenger/features/chat/domain/entity/message_entity.dart';
import 'package:my_messenger/features/chat/domain/usecase/get_messages.dart';
import 'package:my_messenger/features/chat/domain/usecase/send_message.dart';

part 'chat_bloc_models.dart';
part 'chat_bloc.freezed.dart';

@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final GetMessages _getMessages;
  final SendMessage _sendMessage;
  StreamSubscription? _subscription;
  ChatBloc(this._getMessages, this._sendMessage) : super(ChatState.empty()) {
    on<ChatEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(ChatEvent event, Emitter<ChatState> emit) {
    event.when(
      init: (roomId) async {
        if (_subscription != null) {
          return;
        }
        final res = await _getMessages(GetMessageParams(roomId));
        if (res.isLeft) {
          emit(state.copyWith(messageList: []));
        } else {
          _subscription = res.right.listen((event) {
            add(ChatEvent.update(event.toList()));
          });
        }
      },
      update: (list) {
        emit(state.copyWith(messageList: list));
      },
      sendMessage: (params) async {
        await _sendMessage(params);
      },
    );
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
