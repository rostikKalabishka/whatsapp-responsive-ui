import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/utils/colors.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Whatsapp',
            style: TextStyle(
                color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert, color: Colors.grey))
          ],
          bottom: const TabBar(
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              indicatorWeight: 4,
              indicatorColor: tabColor,
              labelColor: tabColor,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                  text: 'CHATS',
                ),
                Tab(
                  text: 'STATUS',
                ),
                Tab(
                  text: 'CALLS',
                )
              ]),
        ),
        body: const Center(child: Text('Mobile')),
      ),
    );
  }
}
