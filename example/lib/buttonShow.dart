import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mutual_ui/mutual_ui.dart';

import 'ThemeController/themeController.dart';

class ButtonShow extends StatelessWidget {
  const ButtonShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var themeController = Get.find<ThemeController>();
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: sWidth),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MuButton(
              context: context,
              height: 56,
              bgcolor: cPrimary,
              radius: 16,
              busy: false,
              text: 'Light Theme',
              textColor: cWhite,
              press: () {
                themeController.enableLightTheme(true);
              },
            ),
            sized0hx20,
            MuButton(
              context: context,
              height: 56,
              // bgcolor: cPrimary,
              radius: 16,
              busy: false,
              borderColor: cDarkGrey,
              text: 'Dark Theme',
              //textColor: cWhite,
              press: () {
                themeController.enableDarkTheme(true);
                print('print');
              },
            ),
            sized0hx20,
            MuButton(
              context: context,
              height: 56,
              bgcolor: cPrimary,
              radius: 16,
              busy: false,
              text: 'System Theme',
              textColor: cWhite,
              press: () {
                themeController.enableSystemTheme(true);
              },
            ),
            sized0hx20,
            MuButton(
              context: context,
              height: 56,
              // bgcolor: cPrimary,
              radius: 16,
              busy: true,

              borderColor: cDarkGrey,
              text: 'Press',
              //textColor: cWhite,
              press: () {},
            ),
            sized0hx20,
            MuButton(
              context: context,
              height: 56,
              bgcolor: cPrimary,
              radius: 16,
              busy: true,
              text: 'System Theme',
              textColor: cWhite,
              press: () {
                themeController.enableSystemTheme(true);
              },
            ),
          ],
        ),
      )),
    );
  }
}
