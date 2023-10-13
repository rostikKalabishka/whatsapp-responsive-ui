import 'package:whatsapp_responsive_ui/screens/web_screens.dart';

import '../responsive/responsive_layout.dart';
import '../screens/mobile_dialog_screen.dart';
import '../screens/mobile_screen.dart';

final router = {
  '/': (context) => const ResponsiveLayoutWidget(
        mobileScreen: MobileScreenLayout(),
        webScreen: WebScreenLayout(),
      ),
  '/dialog': (context) => MobileDialogScreen()
};
