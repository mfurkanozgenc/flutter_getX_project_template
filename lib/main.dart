import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:project_template/constants/color_constants.dart';
import 'package:project_template/pages/pages.dart';

void main() {
  configEasyLoading();
  runApp(const MainApp());
}

void configEasyLoading() {
  final colors = ColorConstants();
  EasyLoading.instance
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorColor = colors.generalColor

    
    ..indicatorWidget = SpinKitFadingCircle(
      color: colors.generalColor,
      size: 45.0,
    )
    ..backgroundColor = Colors.transparent
    ..maskColor = Colors.transparent
    ..textColor = Colors.black
    ..userInteractions = false
    ..dismissOnTap = false
    ..boxShadow = []
    ..radius = 12
    ..contentPadding = const EdgeInsets.symmetric(horizontal: 20, vertical: 15)
    ..textStyle = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
    );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final initialPage = Pages.getInitialPage();
    return GetMaterialApp(
      getPages: Pages.pages,
      initialRoute: initialPage.name,
      initialBinding: initialPage.binding,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      builder: EasyLoading.init(),
    );
  }
}
