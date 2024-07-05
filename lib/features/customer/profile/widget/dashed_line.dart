import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/color_manager.dart';


class DashedLine extends StatelessWidget {
  const DashedLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Center(
          child: DashedVerticalLine(
            height: 100.h,
            color: ColorManager.grey2,
            dashHeight: 5.h,
            dashSpacing: 3,
          ),
        ),

    );
  }
}

class DashedVerticalLine extends StatelessWidget {
  final double height;
  final Color color;
  final double dashHeight;
  final double dashSpacing;

  const DashedVerticalLine({super.key, 
    required this.height,
    required this.color,
    required this.dashHeight,
    required this.dashSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: 1,
      child: CustomPaint(
        painter: _DashedLinePainter(
          color: color,
          dashHeight: dashHeight,
          dashSpacing: dashSpacing,
        ),
      ),
    );
  }
}

class _DashedLinePainter extends CustomPainter {
  final Color color;
  final double dashHeight;
  final double dashSpacing;

  _DashedLinePainter({
    required this.color,
    required this.dashHeight,
    required this.dashSpacing,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = size.width;

    double startY = 0;
    while (startY < size.height) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashHeight), paint);
      startY += dashHeight + dashSpacing;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
