import 'package:flutter/cupertino.dart';

class DashedLineWidget extends StatelessWidget {
  const DashedLineWidget({
    required this.color,
    this.dashWidth = 1,
    this.dashLength = 5,
    this.dashSpace = 5,
    Key? key,
  }) : super(key: key);

  final Color color;
  final double dashWidth;
  final double dashLength;
  final double dashSpace;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: dashWidth,
      child: CustomPaint(
        painter: _DashedLinePainter(
          color: color,
          width: dashWidth,
          dashLength: dashLength,
          dashSpace: dashSpace,
        ),
      ),
    );
  }
}

class _DashedLinePainter extends CustomPainter {
  _DashedLinePainter({
    required this.color,
    this.width = 1,
    this.dashLength = 5,
    this.dashSpace = 5,
  });

  final Color color;
  final double width;
  final double dashLength;
  final double dashSpace;

  @override
  void paint(Canvas canvas, Size size) {
    double currentPosition = 0;
    final paint = Paint()
      ..color = color
      ..strokeWidth = width;
    while (currentPosition < size.width) {
      canvas.drawLine(
        Offset(currentPosition, 0),
        Offset(currentPosition + dashLength, 0),
        paint,
      );
      currentPosition += dashLength + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
