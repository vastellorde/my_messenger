import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_messenger/app/theme/app_colors.dart';

@RoutePage()
class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: CustomScrollView(
        slivers: [
          SliverList.builder(
            itemBuilder: (context, index) {
              return Text(index.toString());
            },
            itemCount: 100,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 72,
        decoration: const BoxDecoration(color: Colors.white),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        width: MediaQuery.sizeOf(context).width,
        child: TextFormField(
          decoration: InputDecoration(
            hintText: 'Type your message...',
            suffixIcon: IconButton(
              onPressed: () {},
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
      backgroundColor: AppColors.background,
    );
  }
}
