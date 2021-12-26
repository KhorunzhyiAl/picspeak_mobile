import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    this.child,
    this.height,
    this.width,
    Key? key,
  }) : super(key: key);

  final Widget? child;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: height,
      width: width,
      child: Card(
        elevation: 0,
        margin: EdgeInsets.zero,
        clipBehavior: Clip.hardEdge,
        color: theme.colorScheme.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: child,
      ),
    );
  }
}
