import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_messenger/features/chat/presentation/state/chat_bloc.dart';
import 'package:my_messenger/features/chat/presentation/ui/widgets/text_message_widget.dart';

class ChatMessageList extends StatelessWidget {
  const ChatMessageList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      builder: (context, state) {
        return Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            reverse: true,
            itemBuilder: (context, index) {
              return TextMessageWidget(message: state.messageList[index]);
            },
            separatorBuilder: (_, __) {
              return const SizedBox(
                height: 12,
              );
            },
            itemCount: state.messageList.length,
          ),
        );
      },
    );
  }
}
