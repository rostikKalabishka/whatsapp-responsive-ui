import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/utils/colors.dart';

import '../widgets/chat_list.dart';

class MobileDialogScreen extends StatelessWidget {
  const MobileDialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final name = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(name.toString()),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.video_call,
              size: 20,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.call,
              size: 20,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
              size: 20,
            ),
          )
        ],
        backgroundColor: appBarColor,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(child: ChatList()),
            Container(
              height: MediaQuery.of(context).size.height * 0.07,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: dividerColor),
                ),
                color: chatBarMessage,
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.attach_file,
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 15,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: searchBarColor,
                          hintText: 'Type a message',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          contentPadding: const EdgeInsets.only(left: 20),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mic,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
