import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainAuthButton extends StatelessWidget {
  const MainAuthButton({
    required this.onPressed,
    required this.text,
    required this.enabled,
    this.showLoading = false,
    Key? key,
  }) : super(key: key);

  final bool showLoading;
  final String text;
  final bool enabled;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    bool isFlat = !enabled || showLoading;

    return ElevatedButton(
      onPressed: isFlat ? null : onPressed,
      child: SizedBox(
        height: 25,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (showLoading) ...[
              SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.transparent,
                  color: theme.colorScheme.onSurface.withOpacity(0.5),
                ),
              ),
              const SizedBox(width: 15),
            ],
            Text(text),
          ],
        ),
      ),
      style: ButtonStyle(
        textStyle: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return theme.textTheme.headline3;
          } else {
            return theme.textTheme.headline3;
          }
        }),
        padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return theme.colorScheme.primary.withOpacity(0.2);
          } else {
            return theme.colorScheme.primary;
          }
        }),
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return theme.colorScheme.onSurface.withOpacity(0.5);
          } else {
            return theme.colorScheme.onPrimary;
          }
        }),
        elevation: MaterialStateProperty.all(0),
      ),
    );
  }
}
