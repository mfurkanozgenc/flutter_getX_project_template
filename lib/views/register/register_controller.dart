import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_template/base/base_state.dart';
import 'package:project_template/models/user_model.dart';
import 'package:project_template/pages/routes.dart';

class RegisterController extends GetxController with BaseState {
  final nameController = TextEditingController();
  final surNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final emailController = TextEditingController();
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final againPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void register() {
    if (formKey.currentState!.validate()) {
      if (passwordController.text == againPasswordController.text) {
        var user = UserModel(
          name: nameController.text,
          surname: surNameController.text,
          phoneNumber: phoneNumberController.text,
          email: emailController.text,
          userName: userNameController.text,
          password: passwordController.text,
        );
        services.storage.writeData('user', user.toJson());

        print('Kayıtlı Kullanıcı : ${services.storage.readData('user')}');
        Get.toNamed(Routes.home);
      }
    }
  }
}
