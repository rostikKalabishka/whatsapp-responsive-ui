import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/responsive/responsive_layout.dart';
import 'package:whatsapp_responsive_ui/screens/mobile_screen.dart';
import 'package:whatsapp_responsive_ui/screens/web_screens.dart';
import 'package:whatsapp_responsive_ui/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      home: const ResponsiveLayoutWidget(
        mobileScreen: MobileScreenLayout(),
        webScreen: WebScreenLayout(),
      ),
    );
  }
}
