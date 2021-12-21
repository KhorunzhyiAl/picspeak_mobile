import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondaryAuthButton extends StatelessWidget {
  const SecondaryAuthButton({
    required this.text,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return OutlinedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: theme.textTheme.headline5?.copyWith(
          color: theme.colorScheme.primary,
        ),
      ),
      style: ButtonStyle(
        padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
        backgroundColor: MaterialStateProperty.all(theme.colorScheme.surface),
        foregroundColor: MaterialStateProperty.all(theme.colorScheme.primary),
        elevation: MaterialStateProperty.all(0),
        side: MaterialStateProperty.all(BorderSide.none),
      ),
    );
  }
}
