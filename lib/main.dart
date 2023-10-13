import 'package:flutter/material.dart';

import 'package:whatsapp_responsive_ui/router/router.dart';

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
      routes: router,
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
    );
  }
}
