import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_template/base/base_state.dart';
import 'package:project_template/pages/routes.dart';
import 'package:project_template/views/home/home_controller.dart';
import 'package:project_template/widgets/main_app_bar.dart';
import 'package:project_template/widgets/main_safe_area.dart';

class HomeView extends GetView<HomeController> with BaseState {
  @override
  Widget build(BuildContext context) {
    var loginUser = controller.getLoginUser();
    return MainSafeArea(
      floatingActionButton: FloatingActionButton(
          backgroundColor: colors.generalColor.shade400,
          onPressed: () {
            Get.toNamed(Routes.login);
          },
          child: Icon(
            Icons.exit_to_app,
            color: Colors.white,
          )),
      appBar: MainAppBar(
        backgroundColor: colors.generalColor.shade700,
        title: Text('Hoşgeldiniz : ${loginUser.name} ${loginUser.surname}'),
      ),
    );
  }
}
