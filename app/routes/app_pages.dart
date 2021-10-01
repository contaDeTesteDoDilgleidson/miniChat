import 'package:get/get.dart';
import 'package:myapp/app/modules/welcome/welcome_binding.dart';
import 'package:myapp/app/modules/welcome/welcome_page.dart';

part './app_routes.dart';

class AppPages {
  static const WELCOME = Routes.WELCOME;

  static final routes = [
    GetPage(
      name: Routes.WELCOME,
      page: () => WelcomePage(),
      binding: WelcomeBinding(),
    ),
  ];
}
