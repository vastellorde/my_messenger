import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_messenger/app/theme/app_colors.dart';
import 'package:my_messenger/features/chat/domain/usecase/send_message.dart';
import 'package:my_messenger/features/chat/presentation/state/chat_bloc.dart';

class ChatInput extends StatefulWidget {
  const ChatInput({super.key});

  @override
  State<ChatInput> createState() => _ChatInputState();
}

class _ChatInputState extends State<ChatInput> {
  final controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userId = FirebaseAuth.instance.currentUser?.uid ?? '';
    final roomId = context.routeData.pathParams.getString('roomId');
    return Container(
      height: 72,
      decoration: const BoxDecoration(color: Colors.white),
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      width: MediaQuery.sizeOf(context).width,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: 'Type your message...',
          suffixIcon: IconButton(
            onPressed: () {
              context.read<ChatBloc>().add(
                    ChatEvent.sendMessage(
                      SendMessageParams(
                        text: controller.text,
                        senderId: userId,
                        receiverId: userId,
                        roomId: roomId,
                      ),
                    ),
                  );
              controller.clear();
            },
            icon: const Icon(
              Icons.send,
              color: AppColors.gray,
            ),
          ),
          prefixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: AppColors.gray,
            ),
          ),
        ),
      ),
    );
  }
}
