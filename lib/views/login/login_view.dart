import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_template/base/base_state.dart';
import 'package:project_template/pages/routes.dart';
import 'package:project_template/views/login/login_controller.dart';
import 'package:project_template/widgets/main_elevated_button.dart';
import 'package:project_template/widgets/main_safe_area.dart';
import 'package:project_template/widgets/main_text_form_field.dart';

class LoginView extends GetView<LoginController> with BaseState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              colors.generalColor.shade200,
              colors.generalColor.shade400,
              colors.generalColor,
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: Get.height * 0.05),
                  // Logo veya uygulama adı
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 15,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Icon(
                        Icons.lock_outline_rounded,
                        size: 60,
                        color: colors.generalColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Hoş Geldiniz',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Hesabınıza giriş yapın',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 50),
                  // Form alanları
                  Container(
                    padding: EdgeInsets.all(28),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 20,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        MainTextFormField(
                          labelText: 'Kullanıcı Adı',
                          prefixIcon: Icon(Icons.person_outline,
                              color: colors.generalColor),
                          paddingSize: 0,
                        ),
                        SizedBox(height: 16),
                        MainTextFormField(
                          labelText: 'Şifre',
                          obscureText: true,
                          prefixIcon: Icon(Icons.lock_outline,
                              color: colors.generalColor),
                          paddingSize: 0,
                        ),
                        SizedBox(height: 8),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Şifremi Unuttum',
                              style: TextStyle(
                                color: colors.generalColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 24),
                        MainElevatedButton(
                          icon: Icon(Icons.login_rounded),
                          backgroundColor: colors.generalColor,
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(vertical: 16),
                          onPressed: controller.login,
                          child: Text(
                            'GİRİŞ YAP',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  RichText(
                    text: TextSpan(
                      text: 'Hesabınız yok mu? ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.toNamed(Routes.register);
                            },
                          text: 'Kayıt Ol',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    globals.appVersionNo,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
