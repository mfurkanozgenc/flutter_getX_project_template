import 'package:flutter/material.dart';
import 'package:project_template/constants/color_constants.dart';

class MainSafeArea extends StatelessWidget {
  final Widget? body;
  final PreferredSizeWidget? appBar;
  final Widget? bottomNavigationBar;
  final Widget? drawer;
  final Widget? floatingActionButton;

  const MainSafeArea({
    super.key,
    this.body,
    this.appBar,
    this.bottomNavigationBar,
    this.drawer,
    this.floatingActionButton,
  });

  @override
  Widget build(BuildContext context) {
    var colors = ColorConstants();
    return SafeArea(
      child: Scaffold(
        backgroundColor: colors.lightColor,
        appBar: appBar,
        body: body,
        bottomNavigationBar: bottomNavigationBar,
        drawer: drawer,
        floatingActionButton: floatingActionButton,
      ),
    );
  }
}
