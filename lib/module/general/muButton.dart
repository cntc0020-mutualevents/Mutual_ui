import 'package:flutter/material.dart';
import 'package:mutual_ui/utils/app_colors.dart';

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
  final bool ignore;

  const MuButton({
    Key? key,
    required this.height,
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
                  child: Text(
                    text,
                    style: TextStyle(
                      color: textColor ?? Theme.of(context).focusColor,
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
