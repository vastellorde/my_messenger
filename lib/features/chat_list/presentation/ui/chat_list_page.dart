import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:my_messenger/features/chat_list/presentation/state/chat_list_bloc.dart';

@RoutePage()
class ChatListPage extends StatelessWidget {
  const ChatListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChatListBloc>(
      create: (context) => GetIt.I.get()..add(const ChatListEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Messages'),
        ),
        body: BlocBuilder<ChatListBloc, ChatListState>(
          builder: (context, state) {
            return ListView.separated(
              padding: const EdgeInsets.all(16),
              itemBuilder: (context, index) {
                final item = state.chatRooms[index];
                return ListTile(
                  onTap: () {
                    AutoRouter.of(context).pushNamed(
                        '/room/${item.id}?members=${item.members.join(',')}');
                  },
                  leading: const Icon(Icons.person),
                  title: const Text('Some guy'),
                  subtitle:
                      item.lastMessage != null ? const Text('hello!') : null,
                  trailing: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Text(
                        item.messages
                            .where((element) => !element.isSeen)
                            .length
                            .toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (_, __) {
                return const Divider();
              },
              itemCount: state.chatRooms.length,
            );
          },
        ),
      ),
    );
  }
}
