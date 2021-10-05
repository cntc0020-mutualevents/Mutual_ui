import 'package:flutter/material.dart';

import '../../../mutual_ui.dart';

Text tw600s32(BuildContext context, String text, {Color? color}) => Text(text,
    style: Theme.of(context)
        .textTheme
        .subtitle1
        ?.copyWith(fontSize: 32, color: color));

Text tw600s20(BuildContext context, String d, {Color? color}) => Text(d,
    textAlign: TextAlign.center,
    style: Theme.of(context)
        .textTheme
        .subtitle1
        ?.copyWith(fontSize: 20, color: color));

Text tw600s16(BuildContext context, String d, {Color? color}) => Text(d,
    style: Theme.of(context).textTheme.subtitle1?.copyWith(color: color));

Text tw600s14(BuildContext context, String d, {Color? color}) => Text(d,
    style: Theme.of(context).textTheme.subtitle2?.copyWith(color: color));

Text tw600s12(BuildContext context, String d, {Color? color}) => Text(d,
    style: Theme.of(context)
        .textTheme
        .subtitle1
        ?.copyWith(fontSize: 12, color: color));

Text tw600s10(BuildContext context, String d, {Color? color}) => Text(d,
    style: Theme.of(context)
        .textTheme
        .subtitle1
        ?.copyWith(fontSize: 10, color: color));

Text tw400s16(BuildContext context, String d, {Color? color}) => Text(d,
    style: Theme.of(context)
        .textTheme
        .headline4
        ?.copyWith(fontSize: 16, color: color));

Text tw400s14(BuildContext context, String d,
        {Color? color, TextAlign align = TextAlign.start}) =>
    Text(d,
        textAlign: align,
        style: Theme.of(context).textTheme.headline4?.copyWith(color: color));

Text tw400s12(BuildContext context, String d, {Color? color}) => Text(d,
    style: Theme.of(context)
        .textTheme
        .headline4
        ?.copyWith(fontSize: 12, color: color));

Text subtitlesuccess(BuildContext context, String d) => Text(d,
    textAlign: TextAlign.center,
    style: Theme.of(context)
        .textTheme
        .headline4
        ?.copyWith(fontSize: 16, color: cDarkGrey));

Widget customCircleDp({Widget? child}) => Container(
    clipBehavior: Clip.antiAlias,
    height: 20,
    width: 20,
    decoration: const BoxDecoration(shape: BoxShape.circle),
    child: child);

Widget borderContainer({Widget? child}) {
  return Container(
    height: 64,
    width: 64,
    decoration: BoxDecoration(
        shape: BoxShape.circle, border: Border.all(color: clightGrey)),
    child: child,
  );
}

Widget tagversionTest({Widget? child}) {
  return Container(
    height: 64,
    width: 64,
    decoration: BoxDecoration(
        shape: BoxShape.circle, border: Border.all(color: clightGrey)),
    child: child,
  );
}
