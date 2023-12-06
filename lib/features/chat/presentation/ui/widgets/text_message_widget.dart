import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_messenger/features/chat/data/models/message.dart';

class TextMessageWidget extends StatelessWidget {
  final Message message;
  const TextMessageWidget({required this.message, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: message.type == MessageType.received
          ? MainAxisAlignment.start
          : MainAxisAlignment.end,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 24,
            maxWidth: MediaQuery.sizeOf(context).width * 0.8,
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    message.text,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      height: 21 / 14,
                    ),
                  ),
                  Text(
                    DateFormat('hh:mm a').format(message.time),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      height: 18 / 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
