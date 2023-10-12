import 'package:flutter/material.dart';

class ResponsiveLayoutWidget extends StatelessWidget {
  const ResponsiveLayoutWidget({
    Key? key,
    required this.mobileScreen,
    required this.webScreen,
  }) : super(key: key);
  final Widget mobileScreen;
  final Widget webScreen;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 900) {
          return mobileScreen;
        } else {
          return webScreen;
        }
      },
    );
  }
}
