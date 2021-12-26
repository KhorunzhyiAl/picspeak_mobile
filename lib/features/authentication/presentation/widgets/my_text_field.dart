import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    required this.name,
    this.onTextChanged,
    this.onSubmitted,
    this.errorText = '',
    this.obscure = false,
    this.showErrorText = true,
    Key? key,
  }) : super(key: key);

  final bool obscure;
  final String name;
  final void Function(String)? onTextChanged;
  final void Function(String)? onSubmitted;
  final String errorText;
  final bool showErrorText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      type: MaterialType.transparency,
      child: TextField(
        obscureText: obscure,
        onChanged: onTextChanged,
        onSubmitted: onSubmitted,
        style: theme.textTheme.bodyText1?.copyWith(
          color: theme.colorScheme.onSurface,
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(15),
          hintText: name,
          hintStyle: theme.textTheme.bodyText2?.copyWith(
            color: theme.colorScheme.onSurface.withOpacity(0.5),
          ),
          border: InputBorder.none,
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: Colors.red.withOpacity(0.2),
            ),
          ),
          errorText: errorText.isEmpty ? null : errorText,
          errorMaxLines: showErrorText ? null : 0,
          errorStyle: theme.textTheme.caption?.copyWith(color: theme.colorScheme.error),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: Colors.red.withOpacity(0.5),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: theme.colorScheme.primary.withOpacity(0.5),
            ),
          ),
          filled: true,
          fillColor: theme.colorScheme.surface,
        ),
      ),
    );
  }
}
