import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'app_colors.dart';

SizedBox roundedIconBox(
  BuildContext context, {
  double? height,
  double? width,
  double? iconWidth,
  String? svgIcon,
  IconData? icon,
  Color? iconColor,
  BoxBorder? border,
  Color? bgColor,
}) {
  assert(icon != null || svgIcon != null,
      ' please add icon without error in  [roundedIconBox] function');
  return SizedBox(
    height: height ?? 80,
    width: width ?? 80,
    child: DecoratedBox(
      decoration: BoxDecoration(
          color: bgColor ?? cPrimary, shape: BoxShape.circle, border: border),
      child: svgIcon != null
          ? Align(
              child: SvgPicture.asset(
              svgIcon,
              width: iconWidth ?? 18,
              color: iconColor ?? cWhite,
              alignment: Alignment.center,
            ))
          : Align(
              alignment: Alignment.center,
              child: Icon(
                icon,
                size: iconWidth ?? 18,
                color: iconColor ?? cWhite,
              )),
    ),
  );
}
