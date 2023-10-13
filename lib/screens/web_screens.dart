import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/widgets/contacts.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        const Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //web app bar
                //web search
                Contacts()
              ],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'backgroundImage.png',
                  ),
                  fit: BoxFit.cover)),
        ),
      ]),
    );
  }
}
