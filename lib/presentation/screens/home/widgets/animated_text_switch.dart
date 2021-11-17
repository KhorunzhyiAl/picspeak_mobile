import 'dart:math';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedTextSwitch extends StatefulWidget {
  final String text;

  const AnimatedTextSwitch({required this.text, Key? key}) : super(key: key);

  @override
  _AnimatedTextSwitchState createState() => _AnimatedTextSwitchState();
}

class _AnimatedTextSwitchState extends State<AnimatedTextSwitch>
    with SingleTickerProviderStateMixin {
  String oldText = '';
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      duration: const Duration(milliseconds: 130),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    // When the widget gets rebuilt with new text, it needs to know what the old text was to show it
    // moving away.
    final oldTextTemp = oldText;
    oldText = widget.text;

    animationController.reset();
    animationController.forward();
    final animation = animationController.drive(
      Tween<double>(begin: 0.0, end: 1.0).chain(CurveTween(curve: Curves.easeOutSine)),
    );

    const h = 50.0; // the height of the rotating 'box'
    return ClipRect(
      clipBehavior: Clip.hardEdge,
      child: ShaderMask(
        blendMode: BlendMode.dstIn,
        shaderCallback: (rect) {
          return const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.transparent, Colors.black, Colors.black, Colors.transparent],
            stops: [0.0, 0.1, 0.9, 1.0],
          ).createShader(rect);
        },
        child: AnimatedBuilder(
          animation: animationController,
          builder: (context, _) {
            final v = animation.value;
            return LimitedBox(
              maxHeight: 100,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Transform(
                      // aurghhh! fuck autoformater...
                      transform: Matrix4(
                        1,  0,      0,      0,
                        0,  1,      0,      0,
                        0,  0,      1,      0,
                        0,  h / 2,  -h / 2, 1,
                      ).multiplied(Matrix4(
                        1,0,0,0,
                        0,  cos((1 - v) * pi / 2),  sin((1 - v) * pi / 2),  0,
                        0,  -sin((1 - v) * pi / 2), cos((1 - v) * pi / 2),  0,
                        0,  0,                      0,                      1,
                      ).multiplied(Matrix4(
                        1,
                        0,
                        0,
                        0,
                        0,
                        1,
                        0,
                        0,
                        0,
                        0,
                        1,
                        0,
                        0,
                        -h / 2,
                        h / 2,
                        1,
                      ))),
                      child: Container(
                        height: h,
                        alignment: Alignment.centerLeft,
                        color: Colors.transparent,
                        child: Text(
                          widget.text,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Transform(
                      transform: Matrix4(
                        1,
                        0,
                        0,
                        0,
                        0,
                        1,
                        0,
                        0,
                        0,
                        0,
                        1,
                        0,
                        0,
                        h / 2,
                        -h / 2,
                        1,
                      ).multiplied(Matrix4(
                        1,
                        0,
                        0,
                        0,
                        0,
                        cos(-v * pi / 2),
                        sin(-v * pi / 2),
                        0,
                        0,
                        -sin(-v * pi / 2),
                        cos(-v * pi / 2),
                        0,
                        0,
                        0,
                        0,
                        1,
                      ).multiplied(Matrix4(
                        1,
                        0,
                        0,
                        0,
                        0,
                        1,
                        0,
                        0,
                        0,
                        0,
                        1,
                        0,
                        0,
                        -h / 2,
                        h / 2,
                        1,
                      ))),
                      child: Container(
                        height: h,
                        alignment: Alignment.centerLeft,
                        color: Colors.transparent,
                        child: Text(
                          oldTextTemp,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
