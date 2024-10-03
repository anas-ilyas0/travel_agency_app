import 'package:flutter/material.dart';

class DashedLine extends StatelessWidget {
  final Color lineColor;

  const DashedLine({
    required this.lineColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(double.infinity, 1.0),
      painter: CreateDashedLine(lineColor),
    );
  }
}

class CreateDashedLine extends CustomPainter {
  final Color lineColor;

  CreateDashedLine(this.lineColor);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = lineColor
      ..strokeWidth = 0.5
      ..style = PaintingStyle.stroke;

    var max = size.width;
    double startX = 0;

    while (startX < max) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + 5.0, 0), paint);
      startX += 5.0 + 3.0;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
