import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:picspeak/core/presentation/injectable/injectable_init.dart';
import 'package:picspeak/features/authentication/presentation/sign_up_form/cubit/sign_up_form_cubit.dart';
import 'package:picspeak/features/authentication/presentation/sign_up_form/sign_up_form_screen.dart';

/// Shows splash screen and starts loading. When the loading finishes, navigates to the home page.
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static Route getRoute() {
    return CupertinoPageRoute(builder: (context) {
      return MultiBlocProvider(
        providers: [
          BlocProvider<SignUpFormCubit>(
            create: (context) => getIt.get(),
            child: Container(),
          )
        ],
        child: const SignUpFormScreen(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.blue.shade700);
  }
}
