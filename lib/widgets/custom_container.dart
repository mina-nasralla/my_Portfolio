import 'package:flutter/cupertino.dart';
import 'dart:ui' as ui;

class CustomContainer extends StatelessWidget {
  final Widget child;

  const CustomContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          padding: const EdgeInsets.only(top: 140, left: 15, right: 15),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                      color: exteriorShadow,
                      offset: Offset(0.0, 0.0),
                      spreadRadius: -1.0,
                      blurRadius:10,
                    ),
                    // Interior shadow (light source creates depth)
                    BoxShadow(
                      color: interiorShadow,
                      offset: Offset(0.0, 0.0),
                      spreadRadius: -1.0,
                      blurRadius:10,
                    ),
                  ],
                ),
                child: CustomPaint(
                  size: Size(constraints.maxWidth, constraints.maxHeight),
                  painter: RPSCustomPainter(),
                ),
              ),
              Positioned(
                top: constraints.maxHeight * 0.3,
                left: constraints.maxWidth * 0.15,
                child: child,
              ),
            ],
          ),
        );
      },
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.196, size.height * 0.027);
    path_0.cubicTo(size.width * 0.196, size.height * 0.012, size.width * 0.178,
        0, size.width * 0.163, 0);
    path_0.lineTo(size.width * 0.089, 0);
    path_0.cubicTo(
        size.width * 0.04, 0, 0, size.height * 0.04, 0, size.height * 0.089);
    path_0.lineTo(0, size.height * 0.913);
    path_0.cubicTo(0, size.height * 0.962, size.width * 0.04, size.height,
        size.width * 0.089, size.height);
    path_0.lineTo(size.width * 0.909, size.height);
    path_0.cubicTo(size.width * 0.958, size.height, size.width,
        size.height * 0.962, size.width, size.height * 0.913);
    path_0.lineTo(size.width, size.height * 0.089);
    path_0.cubicTo(size.width, size.height * 0.04, size.width * 0.958, 0,
        size.width * 0.909, 0);
    path_0.lineTo(size.width * 0.836, 0);
    path_0.cubicTo(size.width * 0.819, 0, size.width * 0.807,
        size.height * 0.012, size.width * 0.807, size.height * 0.027);
    path_0.lineTo(size.width * 0.807, size.height * 0.12);
    path_0.cubicTo(size.width * 0.807, size.height * 0.202, size.width * 0.807,
        size.height * 0.243, size.width * 0.781, size.height * 0.268);
    path_0.cubicTo(size.width * 0.755, size.height * 0.293, size.width * 0.713,
        size.height * 0.293, size.width * 0.627, size.height * 0.293);
    path_0.lineTo(size.width * 0.377, size.height * 0.293);
    path_0.cubicTo(size.width * 0.291, size.height * 0.293, size.width * 0.249,
        size.height * 0.293, size.width * 0.223, size.height * 0.268);
    path_0.cubicTo(size.width * 0.196, size.height * 0.243, size.width * 0.196,
        size.height * 0.202, size.width * 0.196, size.height * 0.12);
    path_0.lineTo(size.width * 0.196, size.height * 0.027);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.shader = ui.Gradient.linear(
      Offset(size.width * 0.5, 0),
      Offset(size.width * 0.5, size.height),
      [
        const Color(0xff2F3D59).withOpacity(1),
        const Color(0xff0B1326).withOpacity(1),
      ],
      [0, 1],
    );
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

const exteriorShadow = Color.fromRGBO(209, 207, 205, 1);
const interiorShadow = Color.fromRGBO(224, 221, 217, 1);
const backgroundColor = Color.fromRGBO(235, 235, 234, 1);
