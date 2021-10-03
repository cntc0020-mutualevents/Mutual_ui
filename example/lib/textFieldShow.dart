import 'package:flutter/material.dart';
import 'package:mutual_ui/mutual_ui.dart';

// ignore: must_be_immutable
class TextFieldShow extends StatelessWidget {
  TextFieldShow({Key? key}) : super(key: key);

  TextEditingController ctr1 = TextEditingController();
  TextEditingController ctr2 = TextEditingController();
  TextEditingController ctr3 = TextEditingController();
  TextEditingController ctr4 = TextEditingController();
  TextEditingController ctr5 = TextEditingController();
  TextEditingController ctr6 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: sWidth),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //MuTextField
                MuTextField(
                  controller: ctr1,
                  text: 'sample text',
                  onChanged: (v) {},
                ),
                sized0hx20,
                MuTextField(
                  controller: ctr2,
                  text: 'sample text',
                  obsecureText: true,
                  onChanged: (v) {},
                ),
                sized0hx20,
                MuTextField(
                  controller: ctr3,
                  text: '',
                  hintText: 'read only',
                  onChanged: (v) {},
                ),
                sized0hx20,
                MuTextField(
                  controller: ctr4,
                  text: 'sample text',
                  hintText: 'enter',
                  onChanged: (v) {},
                ),
                sized0hx20,
                MuTextField(
                  controller: ctr5,
                  text: '',
                  hintText: 'Description',
                  onChanged: (v) {},
                  contentPading: EdgeInsets.all(10),
                  maxLines: 400,
                  maxLength: 400,
                  //height: 200,
                  keyboardType: TextInputType.multiline,
                  //height: 250,
                ),
                sized0hx20,
                MuTextField(
                  controller: ctr6,
                  text: 'enter your name',
                  hintText: 'enter text',
                  newTextField: true,
                  onChanged: (v) {},
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
