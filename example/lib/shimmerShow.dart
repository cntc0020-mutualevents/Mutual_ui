import 'package:example/ThemeController/themeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mutual_ui/mutual_ui.dart';

class ShimmerShow extends StatelessWidget {
  const ShimmerShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MuButton(
              context: context,
              height: 56,
              radius: 16,
              borderColor: cDarkGrey,
              text: 'list',
              press: () => Get.to(() => ListShow()),
            ),
            sized0hx20,
            MuButton(
              context: context,
              height: 56,
              radius: 16,
              borderColor: cDarkGrey,
              text: 'card',
              press: () => Get.to(() => CardShow()),
            ),
          ],
        ),
      ),
    );
  }
}

class ListShow extends StatelessWidget {
  const ListShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ThemeController>(builder: (_) {
        return ListCardShimmerVer(
          count: 8,
          highlightColor: _.isDarkMode ? Colors.grey[800]! : Colors.grey[100]!,
          baseColor: _.isDarkMode
              ? Theme.of(context).cardColor
              : Colors.grey[300]! //  Colors.grey[300]!,
          ,
        );
      }),
    );
  }
}

class CardShow extends StatelessWidget {
  const CardShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: GetBuilder<ThemeController>(builder: (_) {
        return EventCardShimmerListHor(
          count: 4,
          highlightColor: _.isDarkMode ? Colors.grey[700]! : Colors.grey[100]!,
          baseColor: _.isDarkMode ? Colors.grey[800]! : Colors.grey[300]!,
        );
      })),
    );
  }
}
