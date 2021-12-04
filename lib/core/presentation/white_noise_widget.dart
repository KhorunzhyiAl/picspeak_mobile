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
  late final AnimationController anim;

  @override
  void initState() {
    super.initState();
    anim = AnimationController(
      duration: const Duration(days: 1),
      vsync: this,
    );
  }

  @override
  void dispose() {
    anim.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(),
      child: CustomPaint(
        painter: _WhiteNoisePainter(anim: anim),
      ),
    );
  }
}

class _WhiteNoisePainter extends CustomPainter {
  _WhiteNoisePainter({required AnimationController anim})
      : super(
          repaint: anim..forward(),
        );

  Random r = Random.secure();

  @override
  void paint(Canvas canvas, Size size) {
    final p = Paint();
    p.strokeWidth = 5;

    for (double i = 0; i < size.height - 5; i += 5) {
      for (double j = 0; j < size.width; j += 4) {
        final rShade = r.nextInt(40) + 120;
        p.color = Color.fromARGB(255, rShade, rShade, rShade);

        canvas.drawLine(
          Offset(i, j),
          Offset(i + 6, j),
          p,
        );
      }
    }

    canvas.clipRect(Rect.fromLTWH(0, 0, size.width, size.height));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}