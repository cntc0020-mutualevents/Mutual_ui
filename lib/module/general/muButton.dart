import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mutual_ui/utils/app_colors.dart';
import 'package:mutual_ui/utils/size.dart';

class MuButton extends StatelessWidget {
  final double height;
  final double? width;
  final BuildContext? context;
  final Color? bgcolor;
  final double radius;
  final String text;
  final Color? borderColor;
  final Color? textColor;
  final Function press;
  final bool busy;
  final String? prefixsvgIcon;
  final IconData? prefixicon;
  final bool ignore;

  const MuButton({
    Key? key,
    this.height = 56,
    this.width,
    @required this.context,
    this.bgcolor,
    required this.radius,
    required this.text,
    this.borderColor,
    this.textColor,
    required this.press,
    this.busy = false,
    this.ignore = false,
    this.prefixsvgIcon,
    this.prefixicon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: ignore,
      child: SizedBox(
        height: height,
        width: width,
        child: TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  bgcolor ?? Theme.of(context).cardColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(radius),
                      side: BorderSide(
                          color: borderColor ?? Colors.transparent)))),
          onPressed: () => press(),
          child: busy
              ? Center(
                  child: CircularProgressIndicator(
                  backgroundColor: cWhite,
                ))
              : Center(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      (prefixsvgIcon == null && prefixicon == null)
                          ? SizedBox()
                          : prefixsvgIcon == null
                              ? Icon(
                                  prefixicon,
                                  color:
                                      textColor ?? Theme.of(context).focusColor,
                                )
                              : SvgPicture.asset(
                                  prefixsvgIcon!,
                                  color:
                                      textColor ?? Theme.of(context).focusColor,
                                ),
                      if (prefixsvgIcon != null || prefixicon != null)
                        sized0wx10,
                      Text(
                        text,
                        style: TextStyle(
                          color: textColor ?? Theme.of(context).focusColor,
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
