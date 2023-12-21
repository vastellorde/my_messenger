import 'package:auto_route/auto_route.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
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
  final _emojiShowed = ValueNotifier(false);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _onBackspacePressed() {
    controller
      ..text = controller.text.characters.toString()
      ..selection = TextSelection.fromPosition(
          TextPosition(offset: controller.text.length));
  }

  @override
  Widget build(BuildContext context) {
    final userId = FirebaseAuth.instance.currentUser?.uid ?? '';
    final roomId = context.routeData.pathParams.getString('roomId');
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
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
                onPressed: () {
                  _emojiShowed.value = !_emojiShowed.value;
                  FocusScope.of(context).unfocus();
                },
                icon: const Icon(
                  Icons.add,
                  color: AppColors.gray,
                ),
              ),
            ),
          ),
          ValueListenableBuilder(
              valueListenable: _emojiShowed,
              builder: (context, showing, _) {
                return Offstage(
                  offstage: !showing,
                  child: SizedBox(
                    height: 250,
                    child: EmojiPicker(
                      textEditingController: controller,
                      onBackspacePressed: _onBackspacePressed,
                      config: Config(
                        columns: 7,
                        // Issue: https://github.com/flutter/flutter/issues/28894
                        emojiSizeMax: 32 *
                            (defaultTargetPlatform == TargetPlatform.iOS
                                ? 1.30
                                : 1.0),
                        verticalSpacing: 0,
                        horizontalSpacing: 0,
                        gridPadding: EdgeInsets.zero,
                        bgColor: Colors.white,
                        indicatorColor: Colors.blue,
                        iconColor: Colors.grey,
                        iconColorSelected: Colors.blue,
                        backspaceColor: Colors.blue,
                        skinToneDialogBgColor: Colors.white,
                        skinToneIndicatorColor: Colors.grey,
                        enableSkinTones: true,
                        recentTabBehavior: RecentTabBehavior.RECENT,
                        recentsLimit: 28,
                        replaceEmojiOnLimitExceed: false,
                        noRecents: const Text(
                          'No Recents',
                          style: TextStyle(fontSize: 20, color: Colors.black26),
                          textAlign: TextAlign.center,
                        ),
                        loadingIndicator: const SizedBox.shrink(),
                        tabIndicatorAnimDuration: kTabScrollDuration,
                        categoryIcons: const CategoryIcons(),
                        buttonMode: ButtonMode.MATERIAL,
                        checkPlatformCompatibility: true,
                      ),
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
