import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:mutual_ui/mutual_ui.dart';

class ThemeController extends GetxController {
  bool isLightTheme = false;
  bool isDarkTheme = false;
  bool isSystemTheme = true;
  Color darkColor = Colors.grey.shade900;
  Color lightDarkShade = Colors.grey.shade600;
  Color lightColor = cWhite;
  Color lightShade = Colors.grey.shade300;
  ThemeMode? themeMode;
  var brightness;
  bool isSystemBrightnessDark = false;
  bool isDarkMode = false;

  @override
  void onInit() {
    systemTheme();
    checkDefault();
    super.onInit();
  }

  void systemTheme() {
    brightness = SchedulerBinding.instance?.window.platformBrightness;
    isSystemBrightnessDark = brightness == Brightness.dark;

    if (isSystemBrightnessDark && isSystemTheme) {
      themeMode = ThemeMode.dark;
      isDarkMode = true;
    } else {
      themeMode = ThemeMode.light;
      isDarkMode = false;
    }
  }

  void checkDefault() {
    SchedulerBinding.instance?.window.onPlatformBrightnessChanged = () {
      brightness = SchedulerBinding.instance?.window.platformBrightness;
      isSystemBrightnessDark = brightness == Brightness.dark;
      if (isSystemTheme == true) {
        if (isSystemBrightnessDark) {
          themeMode = ThemeMode.dark;
          isDarkMode = true;
          update();
        } else {
          isDarkMode = false;
          themeMode = ThemeMode.light;

          update();
        }
      } else {}
    };
  }

  void enableSystemTheme(bool isOn) {
    isSystemTheme = isOn;
    if (isOn) {
      isLightTheme = !isOn;
      isDarkTheme = !isOn;
      systemTheme();
    } else {}

    update();
  }

  void enableLightTheme(bool isLight) {
    isLightTheme = isLight;
    isSystemTheme = false;
    if (isLightTheme && isSystemTheme == false) {
      themeMode = ThemeMode.light;
      isDarkTheme = !isLight;
      isDarkMode = false;
    } else {}
    update();
  }

  void enableDarkTheme(bool isDark) {
    isDarkTheme = isDark;
    isSystemTheme = false;
    if (isDarkTheme && isSystemTheme == false) {
      themeMode = ThemeMode.dark;
      isLightTheme = !isDark;
      isDarkMode = true;
    } else {}
    update();
  }
}
