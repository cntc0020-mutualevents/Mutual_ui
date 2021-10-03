import 'package:flutter/material.dart';
import 'package:mutual_ui/utils/app_colors.dart';

class MuTextField extends StatefulWidget {
  const MuTextField(
      {Key? key,
      this.maxLines,
      this.minLines,
      this.prefixText,
      required this.controller,
      required this.text,
      this.maxLength,
      this.obsecureText,
      this.contentPading,
      this.newTextField = false,
      this.height,
      this.hintText,
      this.titleStyle,
      this.readOnly = false,
      required this.onChanged,
      this.keyboardType = TextInputType.name,
      this.whichTextfield})
      : super(key: key);

  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final String? prefixText;
  final TextEditingController controller;
  final String text;
  final String? hintText;
  final bool? obsecureText;
  final EdgeInsetsGeometry? contentPading;
  final bool? newTextField;
  final double? height;
  final TextStyle? titleStyle;
  final bool? whichTextfield;
  final bool? readOnly;
  final TextInputType keyboardType;
  final Function(String) onChanged;
  @override
  _MuTextFieldState createState() => _MuTextFieldState();
}

class _MuTextFieldState extends State<MuTextField> {
  @override
  void initState() {
    super.initState();
    widget.controller.text = widget.text;
  }

  @override
  void didUpdateWidget(MuTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.text != widget.text) {
      widget.controller.text = widget.text;
    }
  }
  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //     widget.controller.text = widget.text;

  // }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: widget.newTextField!
          ? IntrinsicWidth(
              child: TextField(
                readOnly: widget.readOnly!,
                showCursor: false,
                autofocus: false,
                onEditingComplete: () => FocusScope.of(context).nextFocus(),
                controller: widget.controller,
                textAlign: TextAlign.center,
                style: widget.titleStyle ??
                    Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(fontSize: 30),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    // focusedBorder: OutlineInputBorder(
                    //   borderSide: BorderSide(color: cPrimary, width: 2.0),
                    // ),
                    hintText: widget.hintText ?? ''),
              ),
            )
          : SizedBox(
              height: widget.height,
              child: ColoredBox(
                  color: Theme.of(context).accentColor,
                  child: TextField(
                    autofocus: false,
                    onChanged: (val) => widget.onChanged(val),
                    decoration: InputDecoration(
                        //  suffixIcon: const Icon(Icons.search),
                        hintText: widget.hintText ?? '',
                        hintStyle: TextStyle(color: cDarkGrey),
                        border: InputBorder.none,
                        contentPadding: widget.contentPading ??
                            const EdgeInsets.symmetric(horizontal: 10),
                        prefixText: widget.prefixText),
                    minLines: widget.minLines ?? 1,
                    maxLines: widget.maxLines ?? 1,
                    controller: widget.controller,
                    maxLength: widget.maxLength,
                    obscureText: widget.obsecureText ?? false,
                    keyboardType: widget.keyboardType,
                  )),
            ),
    );
  }
}
