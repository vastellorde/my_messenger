import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:my_messenger/app/theme/app_colors.dart';
import 'package:my_messenger/features/chat/presentation/state/chat_bloc.dart';
import 'package:my_messenger/features/chat/presentation/ui/widgets/chat_app_bar.dart';
import 'package:my_messenger/features/chat/presentation/ui/widgets/chat_input.dart';
import 'package:my_messenger/features/chat/presentation/ui/widgets/chat_message_list.dart';

@RoutePage()
class ChatPage extends StatelessWidget {
  final String roomId;
  const ChatPage({@PathParam() required this.roomId, super.key});

  @override
  Widget build(BuildContext context) {
    final members =
        context.routeData.queryParams.getString('members').split(',');
    return BlocProvider<ChatBloc>(
      create: (context) => GetIt.I.get()..add(ChatEvent.init(roomId, members)),
      child: const Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: ChatAppBar(),
        body: Column(
          children: [
            ChatMessageList(),
            ChatInput(),
          ],
        ),
        backgroundColor: AppColors.background,
      ),
    );
  }
}
