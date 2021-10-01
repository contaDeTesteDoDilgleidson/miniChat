import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/welcome/welcome_binding.dart';
import 'package:myapp/app/routes/app_pages.dart';
import 'package:myapp/app/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Color(0xFFF3F5F7),
  ));

  runApp(
    GetMaterialApp(
      title: 'Chat',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.zoom,
      theme: appThemeData,
      initialRoute: Routes.WELCOME,
      getPages: AppPages.routes,
      initialBinding: WelcomeBinding(),
    ),
  );
}
