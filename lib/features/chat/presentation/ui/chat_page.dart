import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:my_messenger/app/theme/app_colors.dart';
import 'package:my_messenger/features/chat/data/datasource/chat_remote_datasource.dart';
import 'package:my_messenger/features/chat/data/models/message.dart';
import 'package:my_messenger/features/chat/presentation/state/chat_bloc.dart';
import 'package:my_messenger/features/chat/presentation/ui/widgets/text_message_widget.dart';

@RoutePage()
class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userId = FirebaseAuth.instance.currentUser?.uid ?? '';
    return BlocProvider<ChatBloc>(
      create: (context) => GetIt.I.get(),
      child: BlocBuilder<ChatBloc, ChatState>(
        builder: (context, state) {
          return Scaffold(
            resizeToAvoidBottomInset: true,
            appBar: AppBar(
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
              title: const Column(
                children: [
                  Text(
                    'Some guy',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      height: 24 / 16,
                      color: AppColors.black,
                    ),
                  ),
                  Text(
                    'Online',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 21 / 14,
                      color: AppColors.gray,
                    ),
                  )
                ],
              ),
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(
                        vertical: 24, horizontal: 16),
                    reverse: true,
                    itemBuilder: (context, index) {
                      return TextMessageWidget(
                          message: Message(
                              uid: index.toString(),
                              text: 'some text with index $index',
                              roomId: '',
                              senderUid: '',
                              receiverUid: '',
                              time: DateTime.now()));
                    },
                    separatorBuilder: (_, __) {
                      return const SizedBox(
                        height: 12,
                      );
                    },
                    itemCount: 100,
                  ),
                ),
                Container(
                  height: 72,
                  decoration: const BoxDecoration(color: Colors.white),
                  padding:
                      const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
                  width: MediaQuery.sizeOf(context).width,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Type your message...',
                      suffixIcon: IconButton(
                        onPressed: () {
                          GetIt.I
                              .get<IChatRemoteDatasource>()
                              .sendMessage(Message(
                                uid: '',
                                text: 'some text',
                                roomId: '',
                                time: DateTime.now(),
                                senderUid: userId,
                                receiverUid: userId,
                              ));
                          /* context.read<ChatBloc>().add(
                                ChatEvent.sendMessage(
                                  message: Message(
                                    uid: const Uuid().v4(),
                                    text: 'some text',
                                    time: DateTime.now(),
                                    senderUid: userId,
                                    receiverUid: userId,
                                  ),
                                ),
                              ); */
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
                ),
              ],
            ),
            backgroundColor: AppColors.background,
          );
        },
      ),
    );
  }
}
