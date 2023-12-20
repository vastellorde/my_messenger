import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_messenger/features/chat_list/domain/enitity/chat_room_entity.dart';
import 'package:my_messenger/features/chat_list/domain/usecase/get_rooms.dart';

part 'chat_list_bloc_models.dart';
part 'chat_list_bloc.freezed.dart';

@injectable
class ChatListBloc extends Bloc<ChatListEvent, ChatListState> {
  final GetRooms _getRooms;
  ChatListBloc(this._getRooms) : super(ChatListState.empty()) {
    on<ChatListEvent>(_onChatListEvents);
  }

  FutureOr<void> _onChatListEvents(
      ChatListEvent event, Emitter<ChatListState> emit) async {
    final res = await _getRooms(
        GetRoomsParams(FirebaseAuth.instance.currentUser?.uid ?? ''));

    res.when(left: (_) {
      emit(state.copyWith(chatRooms: []));
    }, right: (r) {
      emit(state.copyWith(chatRooms: r));
    });
  }
}
