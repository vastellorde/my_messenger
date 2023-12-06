import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_messenger/core/utils/data_state/data_state.dart';
import 'package:my_messenger/features/chat/data/models/message.dart';

part 'chat_bloc_models.dart';
part 'chat_bloc.freezed.dart';

@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(ChatState.empty());
}
