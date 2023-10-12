// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ResponsiveLayoutWidget extends StatelessWidget {
  const ResponsiveLayoutWidget({
    Key? key,
    required this.mobileScreen,
    required this.desktopScreen,
  }) : super(key: key);
  final Widget mobileScreen;
  final Widget desktopScreen;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 900) {
          return mobileScreen;
        } else {
          return desktopScreen;
        }
      },
    );
  }
}
