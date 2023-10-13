import 'package:flutter/material.dart';

import '../utils/info.dart';
import 'card_my_message.dart';
import 'card_sender_message.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final message = messages[index]["text"].toString();
          final date = messages[index]["time"].toString();
          if (messages[index]["isMe"] == true) {
            return MyMessageCard(
              date: date,
              message: message,
            );
          } else {
            return SenderMessageCard(
              date: date,
              message: message,
            );
          }
        });
  }
}
