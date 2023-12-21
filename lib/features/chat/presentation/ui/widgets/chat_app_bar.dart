import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_messenger/app/theme/app_colors.dart';
import 'package:my_messenger/features/chat/presentation/state/chat_bloc.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      builder: (context, state) {
        return AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColors.black,
            ),
            onPressed: () {
              context.popRoute();
            },
          ),
          centerTitle: true,
          title: Column(
            children: [
              Text(
                state.receiver.username,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  height: 24 / 16,
                  color: AppColors.black,
                ),
              ),
              Text(
                state.receiver.isOnline ? 'Online' : 'Offline',
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  height: 21 / 14,
                  color: AppColors.gray,
                ),
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
