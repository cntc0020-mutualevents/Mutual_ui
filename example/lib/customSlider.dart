import 'package:flutter/material.dart';

class SliderPainter extends CustomPainter {
  final double sliderPosition;
  final double sliderPercentage;

  SliderPainter({required this.sliderPercentage, required this.sliderPosition});

  @override
  void paint(Canvas canvas, Size size) {
    _pathLine(canvas, size);
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 10,
        Paint()..color = Colors.white);
  }

  _pathLine(Canvas canvas, Size size) {
    Path path = Path();
    path.moveTo(0.0, size.height * 0.55);
    path.lineTo(size.width, size.height * 0.65);
    // path.cubicTo(size.width, 0.10, 10, 41, 80, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.35);
    path.lineTo(0.0, size.height * 0.45);
    // path.addPolygon([
    //   Offset(0.0, size.height * 0.55),
    //   Offset(size.width, size.height * 0.65),
    //   Offset(size.width, size.height * 0.35),
    //   Offset(0.0, size.height * 0.45),
    // ], true);
    canvas.drawPath(
        path,
        Paint()
          ..color = Colors.black.withOpacity(0.3)
          ..style = PaintingStyle.fill
          ..strokeJoin = StrokeJoin.round
          ..strokeCap = StrokeCap.round);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class CustomSlider extends StatefulWidget {
  const CustomSlider({Key? key}) : super(key: key);

  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: GestureDetector(
            child: Container(
              height: 50,
              width: size.width - 100,
              color: Colors.red,
              child: CustomPaint(
                painter:
                    SliderPainter(sliderPercentage: 1.0, sliderPosition: 1.0),
              ),
            ),
          ),
        ));
  }
}
