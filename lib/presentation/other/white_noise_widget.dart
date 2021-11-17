import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhiteNoise extends StatefulWidget {
  const WhiteNoise({Key? key, this.height, this.width}) : super(key: key);

  final double? height;
  final double? width;

  @override
  State<WhiteNoise> createState() => _WhiteNoiseState();
}

/// The only reason to use [TickerProviderStateMixin] over [SingleTickerProviderStateMixin], which
/// is slightly more performant, is because the latter throws error on hot reload.
class _WhiteNoiseState extends State<WhiteNoise> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: CustomPaint(
        painter: _WhiteNoisePainter(vsync: this),
      ),
    );
  }
}

class _WhiteNoisePainter extends CustomPainter {
  _WhiteNoisePainter({required TickerProvider vsync})
      : super(
          repaint: AnimationController(
            duration: const Duration(days: 1),
            vsync: vsync,
          )..forward(),
        );

  Random r = Random.secure();

  @override
  void paint(Canvas canvas, Size size) {
    final p = Paint();
    p.color = Colors.black;
    p.strokeWidth = 1;
    p.blendMode = BlendMode.clear;

    // final h = size.height;
    // final w = size.width;
    // for (int i = 0; i < 200; ++i) {
    //   canvas.drawLine(
    //     Offset(r.nextDouble() * w, r.nextDouble() * h),
    //     Offset(r.nextDouble() * w, r.nextDouble() * h),
    //     p,
    //   );
    // }
    for (double i = 0; i < size.height - 4; i += 4) {
      for (double j = 0; j < size.width - 3; j += 3) {
        if (r.nextBool()) continue;

        final o = r.nextDouble() * 2;
        canvas.drawLine(
          Offset(i, j + o),
          Offset(i + 4, j + o),
          p,
        );
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
