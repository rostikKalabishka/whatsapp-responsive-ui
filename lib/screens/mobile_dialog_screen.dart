import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/utils/colors.dart';

class MobileDialogScreen extends StatelessWidget {
  const MobileDialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final name = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
      ),
      body: SafeArea(child: Text('$name')),
    );
  }
}
