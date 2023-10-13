import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/utils/colors.dart';
import 'package:whatsapp_responsive_ui/utils/info.dart';

class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.75,
      color: webAppBarColor,
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(info[4]['profilePic'].toString()),
                radius: 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              Text(
                info[4]['name'].toString(),
                style: const TextStyle(fontSize: 18),
              )
            ],
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_horiz,
                    color: Colors.grey,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
