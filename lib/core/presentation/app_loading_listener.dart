import 'package:flutter/cupertino.dart';
import 'package:picspeak/core/presentation/injectable/injectable_init.dart';
import 'package:picspeak/core/presentation/routes.dart';
import 'package:picspeak/core/presentation/splash_screen.dart';

class AppLoadingBuilder extends StatefulWidget {
  const AppLoadingBuilder({
    required this.nav,
    required this.builder,
    Key? key,
  }) : super(key: key);

  final Widget Function(BuildContext) builder;
  final GlobalKey<NavigatorState> nav;

  @override
  State<AppLoadingBuilder> createState() => _AppLoadingBuilderState();
}

class _AppLoadingBuilderState extends State<AppLoadingBuilder> {
  late Future configureDependenciesFuture;

  @override
  void initState() {
    super.initState();
    configureDependenciesFuture = configureDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: configureDependenciesFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return widget.builder(context);
        } else {
          return const SplashScreen();
        }
      },
    );
  }
}
