import 'package:flutter/material.dart';

/// Shows splash screen and starts loading. When the loading finishes, navigates to the home page.
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.blue.shade700);
  }
}
