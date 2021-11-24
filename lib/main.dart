import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:picspeak/domain/app/app.dart';
import 'package:picspeak/presentation/navigation/routes.dart';
import 'package:picspeak/presentation/theme/themes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

Future<void> _loadAll(App app, NavigatorState nav) async {
  await app.loadLocalData();
  debugPrint('pusing home route');
  nav.pushNamedAndRemoveUntil(Routes.home, (route) => false);

  await app.connect();
  await app.authenticate();
  debugPrint('loading finished');
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  final App app = App();
  final GlobalKey<NavigatorState> nav = GlobalKey<NavigatorState>();

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      _loadAll(widget.app, widget.nav.currentState!);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<App>.value(value: widget.app),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        navigatorKey: widget.nav,
        theme: MyThemes.light,
        onGenerateRoute: Routes.routeGenerator,
        initialRoute: Routes.splash,
      ),
    );
  }
}
