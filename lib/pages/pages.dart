import 'package:get/get.dart';
import 'package:project_template/pages/routes.dart';
import 'package:project_template/views/home/home_binding.dart';
import 'package:project_template/views/home/home_view.dart';
import 'package:project_template/views/login/login_binding.dart';
import 'package:project_template/views/login/login_view.dart';
import 'package:project_template/views/register/register_binding.dart';
import 'package:project_template/views/register/register_view.dart';

class Pages {
  static GetPage getInitialPage() => pages[0];

  static List<GetPage> pages = [
    GetPage(
      name: Routes.login,
      page: () => LoginView(),
      binding: LoginBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: Routes.home,
      page: () => HomeView(),
      binding: HomeBinding(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: Routes.register,
      page: () => RegisterView(),
      binding: RegisterBinding(),
      transition: Transition.rightToLeft,
    ),
  ];
}
