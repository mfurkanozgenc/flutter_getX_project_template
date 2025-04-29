import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:project_template/base/base_state.dart';
import 'package:project_template/pages/routes.dart';

class LoginController extends GetxController with BaseState {
  void login() {
    EasyLoading.show();
    Future.delayed(const Duration(seconds: 3), () {
      EasyLoading.dismiss();
      Get.offAndToNamed(Routes.home);
    });
  }
}
