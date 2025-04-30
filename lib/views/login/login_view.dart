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
    return MainSafeArea(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: Get.height / 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: colors.generalColor.shade400,
              ),
              child: Center(
                child: Text(
                  'Giriş Yapın',
                  style: TextStyle(color: colors.lightColor),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  MainTextFormField(
                    labelText: 'Kullanıcı Adı',
                  ),
                  MainTextFormField(
                    labelText: 'Şifre',
                    obscureText: true,
                  ),
                  MainElevatedButton(
                    icon: Icon(Icons.login),
                    backgroundColor: colors.generalColor.shade400,
                    width: Get.width * .8,
                    padding: EdgeInsets.all(15),
                    onPressed: controller.login,
                    child: Text('Giriş'),
                  )
                ],
              ),
            ),
          ),
          RichText(
              text: TextSpan(
                  text: 'Hesabınız Yok Mu ?',
                  style: TextStyle(color: colors.darkColor),
                  children: [
                TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Get.toNamed(Routes.register);
                      },
                    text: ' Kayıt Olun',
                    style: TextStyle(color: colors.generalColor))
              ]))
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              globals.appVersionNo,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
