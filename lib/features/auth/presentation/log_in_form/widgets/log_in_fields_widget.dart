import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:picspeak/core/presentation/routes.dart';
import 'package:picspeak/features/app_state/presentation/blocs/app_state_cubit.dart';
import 'package:picspeak/features/auth/presentation/log_in_form/cubit/log_in_form_cubit.dart';
import 'package:picspeak/features/auth/presentation/log_in_form/cubit/log_in_form_data.dart';
import 'package:picspeak/features/auth/presentation/widgets/main_auth_button.dart';
import 'package:picspeak/features/auth/presentation/widgets/secondary_auth_button.dart';
import 'package:picspeak/features/auth/presentation/widgets/my_text_field.dart';

class LogInFieldsWidget extends StatefulWidget {
  const LogInFieldsWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<LogInFieldsWidget> createState() => _LogInFieldsWidgetState();
}

class _LogInFieldsWidgetState extends State<LogInFieldsWidget> {
  @override
  void initState() {
    super.initState();

    final signUpFormCubit = BlocProvider.of<LogInFormCubit>(context, listen: false);
    final appStateCubit = BlocProvider.of<AppStateCubit>(context, listen: false);
    signUpFormCubit.provideAppStateCubit(appStateCubit);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Spacer(),
        BlocBuilder<LogInFormCubit, LogInFormData>(
          builder: (context, state) {
            return MyTextField(
              name: 'Login',
              errorText: state.loginError,
              showErrorText: false,
              onTextChanged: (text) {
                BlocProvider.of<LogInFormCubit>(context).onLoginChanged(text);
              },
            );
          },
        ),
        const SizedBox(height: 15),
        BlocBuilder<LogInFormCubit, LogInFormData>(
          builder: (context, state) {
            return MyTextField(
              name: 'Password',
              errorText: state.passwordError,
              showErrorText: false,
              obscure: true,
              onTextChanged: (text) {
                BlocProvider.of<LogInFormCubit>(context).onPasswordChanged(text);
              },
            );
          },
        ),
        const SizedBox(height: 50),
        BlocBuilder<LogInFormCubit, LogInFormData>(
          builder: (context, state) {
            return MainAuthButton(
              text: 'Log In',
              enabled: state.isReady,
              showLoading: state.isSubmitting,
              onPressed: () async {
                final cubit = BlocProvider.of<LogInFormCubit>(context);
                await cubit.onSubmit();
              },
            );
          },
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            Expanded(
              child: SecondaryAuthButton(
                text: 'Sign Up',
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    Routes.signUp,
                    (route) => false,
                  );
                },
              ),
            ),
            const SizedBox(width: 5),
            Expanded(
              child: SecondaryAuthButton(
                onPressed: () {
                  final appStateCubit = BlocProvider.of<AppStateCubit>(context);
                  appStateCubit.onGuestModeRequested();
                },
                text: 'Continue as guest',
              ),
            ),
          ],
        ),
        const Spacer(),
      ],
    );
  }
}
