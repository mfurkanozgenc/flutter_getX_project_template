import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_template/base/base_state.dart';
import 'package:project_template/pages/routes.dart';
import 'package:project_template/views/register/register_controller.dart';
import 'package:project_template/widgets/main_app_bar.dart';
import 'package:project_template/widgets/main_elevated_button.dart';
import 'package:project_template/widgets/main_safe_area.dart';
import 'package:project_template/widgets/main_text_form_field.dart';

class RegisterView extends GetView<RegisterController> with BaseState {
  @override
  Widget build(BuildContext context) {
    return MainSafeArea(
      appBar: MainAppBar(
          backgroundColor: colors.generalColor.shade400,
          centerTitle: true,
          title: Text('Kayıt Ol'),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => {Get.toNamed(Routes.login)},
          )),
      body: Column(
        children: [
          Form(
            key: controller.formKey,
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(children: [
                    MainTextFormField(
                      labelText: 'Ad',
                      controller: controller.nameController,
                    ),
                    MainTextFormField(
                      labelText: 'Soyad',
                      controller: controller.surNameController,
                    ),
                    MainTextFormField(
                      labelText: 'Telefon',
                      controller: controller.phoneNumberController,
                    ),
                    MainTextFormField(
                      labelText: 'Mail',
                      controller: controller.emailController,
                    ),
                    MainTextFormField(
                      labelText: 'Kullanıcı Adı',
                      controller: controller.userNameController,
                    ),
                    MainTextFormField(
                      labelText: 'Şifre',
                      obscureText: true,
                      controller: controller.passwordController,
                    ),
                    MainTextFormField(
                      labelText: 'Şifre Tekrar',
                      obscureText: true,
                      controller: controller.againPasswordController,
                    ),
                    MainElevatedButton(
                        backgroundColor: colors.generalColor.shade400,
                        width: Get.width,
                        height: Get.height / 15,
                        borderRadius: 15,
                        onPressed: controller.register,
                        child: Text('Kayıt Ol'))
                  ]),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
