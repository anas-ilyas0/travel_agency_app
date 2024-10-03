import 'package:fab_tech_sol/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fab_tech_sol/providers/provider.dart';

class DashedBorder {
  Widget dashedBorder(VoidCallback onPress, BuildContext context, Widget widget,
      EdgeInsetsGeometry padding) {
    return Consumer<UserProvider>(
      builder: (context, userProvider, child) {
        return CustomPaint(
          painter: DottedBorderPainter(),
          child: Container(
            height: 180,
            width: double.infinity,
            padding: padding,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: widget,
          ),
        );
      },
    );
  }
}

class DottedBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double dashWidth = 4.0;
    double dashSpace = 4.0;
    final paint = Paint()
      ..color = mobileLeadText1Color
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    final path = Path()
      ..addRRect(RRect.fromRectAndRadius(
          Rect.fromLTWH(0, 0, size.width, size.height),
          const Radius.circular(7)));
    _drawDashedPath(canvas, path, dashWidth, dashSpace, paint);
  }

  void _drawDashedPath(Canvas canvas, Path path, double dashWidth,
      double dashSpace, Paint paint) {
    final metrics = path.computeMetrics().toList();
    for (final metric in metrics) {
      double distance = 0.0;
      while (distance < metric.length) {
        final end = distance + dashWidth;
        final segmentPath = metric.extractPath(
            distance, end > metric.length ? metric.length : end);
        canvas.drawPath(segmentPath, paint);
        distance += dashWidth + dashSpace;
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
