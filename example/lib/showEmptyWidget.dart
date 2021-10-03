import 'package:flutter/material.dart';
import 'package:mutual_ui/module/general/muEmptyContent.dart';

class ShowEmptyContent extends StatelessWidget {
  const ShowEmptyContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MuEmptyContent(
          title: 'empty content found',
          subtitle: 'empty content found',
          icon: Icons.block,
        ),
      ),
    );
  }
}
