import 'package:flutter/material.dart';

class OverlayedInkWell extends StatelessWidget {
  const OverlayedInkWell({
    required this.child,
    required this.inkWell,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final InkWell inkWell;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        child,
        Positioned.fill(
          child: Material(
            type: MaterialType.transparency,
            child: inkWell,
          ),
        ),
      ],
    );
  }
}
