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
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              colors.generalColor.shade200,
              colors.generalColor.shade400,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 28,
                      ),
                      onPressed: () => {Get.toNamed(Routes.login)},
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          'Kayıt Ol',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 48),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Form(
                    key: controller.formKey,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(24, 30, 24, 0),
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.account_circle_rounded,
                              size: 80,
                              color: colors.generalColor.shade400,
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Hemen üye ol ve avantajlardan yararlan!',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey.shade700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 30),
                            Row(
                              children: [
                                Expanded(
                                  child: MainTextFormField(
                                    labelText: 'Ad',
                                    controller: controller.nameController,
                                    prefixIcon: Icon(Icons.person_outline),
                                  ),
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                  child: MainTextFormField(
                                    labelText: 'Soyad',
                                    controller: controller.surNameController,
                                    prefixIcon: Icon(Icons.person_outline),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            MainTextFormField(
                              labelText: 'Telefon',
                              controller: controller.phoneNumberController,
                              prefixIcon: Icon(Icons.phone_outlined),
                              keyboardType: TextInputType.phone,
                            ),
                            SizedBox(height: 16),
                            MainTextFormField(
                              labelText: 'E-posta',
                              controller: controller.emailController,
                              prefixIcon: Icon(Icons.email_outlined),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            SizedBox(height: 16),
                            MainTextFormField(
                              labelText: 'Kullanıcı Adı',
                              controller: controller.userNameController,
                              prefixIcon: Icon(Icons.account_circle_outlined),
                            ),
                            SizedBox(height: 16),
                            MainTextFormField(
                              labelText: 'Şifre',
                              obscureText: true,
                              controller: controller.passwordController,
                              prefixIcon: Icon(Icons.lock_outline),
                            ),
                            SizedBox(height: 16),
                            MainTextFormField(
                              labelText: 'Şifre Tekrar',
                              obscureText: true,
                              controller: controller.againPasswordController,
                              prefixIcon: Icon(Icons.lock_outline),
                            ),
                            SizedBox(height: 30),
                            MainElevatedButton(
                              backgroundColor: colors.generalColor.shade400,
                              width: Get.width,
                              height: 55,
                              borderRadius: 15,
                              onPressed: controller.register,
                              child: Text(
                                'KAYIT OL',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.2,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            TextButton(
                              onPressed: () => Get.toNamed(Routes.login),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Zaten bir hesabın var mı? ',
                                  style: TextStyle(color: Colors.grey.shade700),
                                  children: [
                                    TextSpan(
                                      text: 'Giriş Yap',
                                      style: TextStyle(
                                        color: colors.generalColor.shade400,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
