import 'package:example/buttonShow.dart';
import 'package:example/shimmerShow.dart';
import 'package:example/showEmptyWidget.dart';
import 'package:example/textFieldShow.dart';
import 'package:example/textShow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mutual_ui/module/general/muButton.dart';
import 'package:mutual_ui/mutual_ui.dart';
import 'package:mutual_ui/utils/app_colors.dart';
import 'package:mutual_ui/utils/theme.dart';

import 'ThemeController/themeController.dart';
import 'customSlider.dart';

void main() {
  Get.put(ThemeController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(builder: (_) {
      return GetMaterialApp(
        title: 'Flutter Demo',
        theme: MyThemes.lightTheme,
        darkTheme: MyThemes.darkTheme,
        themeMode: _.themeMode!,
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      );
    });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          //title: Text(widget.title!),
          ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: sWidth),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Text('You have pushed the button this many times:',
              //     style: Theme.of(context).textTheme.subtitle1),
              // Text(
              //   '$_counter',
              //   style: Theme.of(context).textTheme.headline4,
              // ),
              MuButton(
                context: context,
                height: 56,
                bgcolor: cPrimary,
                radius: 16,
                text: 'Button',
                textColor: cWhite,
                press: () => Get.to(() => ButtonShow()),
              ),
              sized0hx20,
              MuButton(
                context: context,
                height: 56,
                radius: 16,
                borderColor: cDarkGrey,
                text: 'Text',
                press: () => Get.to(() => TextShow()),
              ),
              sized0hx20,
              MuButton(
                context: context,
                height: 56,
                radius: 16,
                borderColor: cDarkGrey,
                text: 'TextField',
                press: () => Get.to(() => TextFieldShow()),
              ),
              sized0hx20,
              MuButton(
                context: context,
                height: 56,
                radius: 16,
                borderColor: cDarkGrey,
                text: 'EmptyWidget',
                press: () => Get.to(() => ShowEmptyContent()),
              ),
              sized0hx20,
              MuButton(
                context: context,
                height: 56,
                radius: 16,
                borderColor: cDarkGrey,
                text: 'Custom Slider',
                press: () => Get.to(() => CustomSlider()),
              ),
              sized0hx20,
              MuButton(
                context: context,
                height: 56,
                radius: 16,
                borderColor: cDarkGrey,
                text: 'Shimmer',
                press: () => Get.to(() => ShimmerShow()),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
