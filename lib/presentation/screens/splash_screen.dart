import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picspeak/domain/app/app.dart';
import 'package:picspeak/domain/app/app_state/app_state.dart';
import 'package:picspeak/presentation/navigation/routes.dart';
import 'package:provider/provider.dart';

/// Shows splash screen and starts loading. When the loading finishes, navigates to the home page.
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nav = Navigator.of(context);

    return Consumer<App>(
      builder: (context, app, _) {
        if (app.state.value is! Empty) {
          debugPrint("SplashScreen should be created only when the app is not loaded");
          // nav.pushNamedAndRemoveUntil(Routes.home, (route) => false);
        }
        _loadAndNavigate(app, nav);

        return Container(color: Colors.amber.shade700);
      },
    );
  }

  Future<void> _loadAndNavigate(App app, NavigatorState nav) async {
    await app.loadLocalData();
    nav.pushNamedAndRemoveUntil(Routes.home, (route) => false);
  }
}
