import 'package:flutter/material.dart';
import 'package:mutual_ui/mutual_ui.dart';

class TextShow extends StatelessWidget {
  const TextShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: sWidth),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              sized0hx20,
              tw600s32(context, 'tw600s32 aA bB cD'),
              sized0hx20,
              tw600s20(context, 'tw600s20 aA bB cD'),
              sized0hx20,
              tw600s16(context, 'tw600s16 aA bB cD'),
              sized0hx20,
              tw600s14(context, 'tw600s14 aA bB cD'),
              sized0hx20,
              tw600s12(context, 'tw600s10 aA bB cD'),
              sized0hx20,
              tw600s10(context, 'tw600s10 aA bB cD'),
              sized0hx20,
              tw400s14(context, 'tw400s14 aA bB cD'),
              sized0hx20,
              tw400s12(context, 'tw400s12 aA bB cD'),

              //  head
            ],
          ),
        ),
      ),
    );
  }
}
