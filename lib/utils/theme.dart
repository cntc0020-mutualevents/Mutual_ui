import 'package:flutter/material.dart';
import 'package:mutual_ui/utils/app_colors.dart';

//!Fonts
String fOpenSans = 'Open Sans';
String fSegoeui = 'Segoeui';
String fProximanova = 'Proximanova';
String fRunda = 'Runda';
String fHelvetica = 'Helvetica';
String fSFPro = 'SFPro';

// MaterialColor white = MaterialColor(
//   0xFFFFFFFF,
//   <int, Color>{
//     50: Color(0xFFFFFFFF),
//     100: Color(0xFFFFFFFF),
//     200: Color(0xFF80CBC4),
//     300: Color(0xFF4DB6AC),
//     400: Color(0xFF26A69A),
//     500: Color(0xFFE0F2F1),
//     600: Color(0xFF00897B),
//     700: Color(0xFF00796B),
//     800: Color(0xFF00695C),
//     900: Color(0xFF004D40),
//   },
// );

ThemeData themeData = ThemeData(
  primaryColor: cPrimary,
  buttonColor: cPrimary,
  accentColor: cAnccent,
  fontFamily: fSegoeui,
  // primarySwatch: white,

  // ignore: deprecated_member_use
  cursorColor: cPrimary,
  hintColor: cDarkGrey,
  textTheme: TextTheme(
    headline1: TextStyle(
      fontFamily: fOpenSans,
      fontWeight: FontWeight.w600,
      fontSize: 42,
      color: cBlack,
    ),
    subtitle2: TextStyle(
      fontFamily: fOpenSans,
      fontWeight: FontWeight.w600,
      fontSize: 14,
      color: cDarkGrey,
    ),
    headline6: TextStyle(
      fontFamily: fOpenSans,
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: cPrimary,
    ),
    headline4: TextStyle(
      fontFamily: fOpenSans,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: cBlack,
    ),
    subtitle1: TextStyle(
      fontFamily: fOpenSans,
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: cBlack,
    ),
    button: const TextStyle(color: Colors.white, fontSize: 18),
  ),
  scaffoldBackgroundColor: Colors.white,
  iconTheme: IconThemeData(color: cDarkGrey),
);

class MyThemes {
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    // colorScheme: const ColorScheme.light(),
    appBarTheme: const AppBarTheme(color: Colors.white),
    primaryColor: cPrimary,
    buttonColor: cPrimary,
    accentColor: cAnccent,
    cardColor: cWhite,
    focusColor: cBlack,
    primaryColorLight: cWhite,
    // accentIconTheme: const IconThemeData(color: Colors.deepOrange),
    primarySwatch: Colors.deepOrange,
    // primaryIconTheme: const IconThemeData(color: Colors.black),
    // fontFamily: fSegoeui,
    // ignore: deprecated_member_use
    // cursorColor: cPrimary,
    hintColor: cDarkGrey,
    textTheme: TextTheme(
      headline1: TextStyle(
        fontFamily: fOpenSans,
        fontWeight: FontWeight.w600,
        fontSize: 42,
        color: cBlack,
      ),
      subtitle2: TextStyle(
        fontFamily: fOpenSans,
        fontWeight: FontWeight.w600,
        fontSize: 14,
        color: cDarkGrey,
      ),
      headline6: TextStyle(
        fontFamily: fOpenSans,
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: cPrimary,
      ),
      headline4: TextStyle(
        fontFamily: fOpenSans,
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: cBlack,
      ),
      headline5: TextStyle(
        fontFamily: fOpenSans,
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: cBlack,
      ),
      subtitle1: TextStyle(
        fontFamily: fOpenSans,
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: cBlack,
      ),
      caption: TextStyle(
        fontFamily: fOpenSans,
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: cBlack,
      ),
      button: const TextStyle(color: Colors.white, fontSize: 18),
    ),
    iconTheme: IconThemeData(color: cDarkGrey),
  );

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    brightness: Brightness.dark,
    // colorScheme: const ColorScheme.dark(),
    appBarTheme: AppBarTheme(color: Colors.grey.shade900),
    primaryColor: cPrimary,
    buttonColor: cPrimary,
    accentColor: Colors.grey.shade800,
    focusColor: cWhite,
    cardColor: Colors.grey.shade800,
    primaryColorLight: Colors.grey.shade300,
    // accentIconTheme: const IconThemeData(color: Colors.red),
    primarySwatch: Colors.deepOrange,
    // primaryIconTheme: const IconThemeData(color: Colors.white),
    // fontFamily: fSegoeui,
    // ignore: deprecated_member_use
    // cursorColor: cPrimary,
    hintColor: cDarkGrey,
    textTheme: TextTheme(
      headline1: TextStyle(
        fontFamily: fOpenSans,
        fontWeight: FontWeight.w600,
        fontSize: 42,
        color: cWhite,
      ),
      headline4: TextStyle(
        fontFamily: fOpenSans,
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: Colors.white54,
      ),
      headline5: TextStyle(
        fontFamily: fOpenSans,
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: cWhite,
      ),
      headline6: TextStyle(
        fontFamily: fOpenSans,
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: cPrimary,
      ),
      subtitle2: TextStyle(
        fontFamily: fOpenSans,
        fontWeight: FontWeight.w600,
        fontSize: 14,
        color: Colors.white60,
      ),
      subtitle1: TextStyle(
        fontFamily: fOpenSans,
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: Colors.white,
      ),
      button: const TextStyle(color: Colors.white, fontSize: 18),
    ),
    iconTheme: IconThemeData(color: cWhite),
  );
}
