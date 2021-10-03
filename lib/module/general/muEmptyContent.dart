import 'package:flutter/material.dart';
import 'package:mutual_ui/module/general/textWidget.dart';
import 'package:mutual_ui/utils/app_colors.dart';
import 'package:mutual_ui/utils/assets_utils.dart';
import 'package:mutual_ui/utils/widgets.dart';

class MuEmptyContent extends StatelessWidget {
  const MuEmptyContent({
    required this.title,
    required this.subtitle,
    this.icon,
    Key? key,
    this.fontsize,
    this.svgIcon,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final IconData? icon;
  final String? svgIcon;
  final double? fontsize;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var sizedBox = SizedBox(height: size.height * 0.01);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          roundedIconBox(
            context,
            height: 80,
            width: 80,
            svgIcon: svgIcon,
            icon: icon,
            bgColor: cPrimary.withOpacity(0.1),
            iconColor: cPrimary,
          ),

          sizedBox,
          //buildheadings(text: title, height: 30, alignment: Alignment.center),
          tw600s16(context, title),
          sizedBox,
          tw400s16(context, subtitle, color: cDarkGrey),
        ],
      ),
    );
  }
}
