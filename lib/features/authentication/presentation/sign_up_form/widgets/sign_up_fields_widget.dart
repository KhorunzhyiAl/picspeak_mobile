import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:picspeak/features/app_state/presentation/app_state/blocs/app_state_cubit.dart';
import 'package:picspeak/features/authentication/presentation/log_in_form/log_in_form_screen.dart';
import 'package:picspeak/features/authentication/presentation/sign_up_form/cubit/sign_up_form_cubit.dart';
import 'package:picspeak/features/authentication/presentation/sign_up_form/cubit/sign_up_form_data.dart';
import 'package:picspeak/features/authentication/presentation/widgets/main_auth_button.dart';
import 'package:picspeak/features/authentication/presentation/widgets/my_text_field.dart';
import 'package:picspeak/features/authentication/presentation/widgets/secondary_auth_button.dart';

class SignUpFieldsWidget extends StatefulWidget {
  const SignUpFieldsWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpFieldsWidget> createState() => _SignUpFieldsWidgetState();
}

class _SignUpFieldsWidgetState extends State<SignUpFieldsWidget> {
  @override
  void initState() {
    super.initState();

    final signUpFormCubit = BlocProvider.of<SignUpFormCubit>(context, listen: false);
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
        BlocBuilder<SignUpFormCubit, SignUpFormData>(
          builder: (context, state) {
            return MyTextField(
              name: 'Login',
              errorText: state.loginError,
              onTextChanged: (text) {
                BlocProvider.of<SignUpFormCubit>(context).onLoginChanged(text);
              },
            );
          },
        ),
        const SizedBox(height: 15),
        BlocBuilder<SignUpFormCubit, SignUpFormData>(
          builder: (context, state) {
            return MyTextField(
              name: 'Password',
              errorText: state.passwordError,
              obscure: true,
              onTextChanged: (text) {
                BlocProvider.of<SignUpFormCubit>(context).onPasswordChanged(text);
              },
            );
          },
        ),
        const SizedBox(height: 15),
        BlocBuilder<SignUpFormCubit, SignUpFormData>(
          builder: (context, state) {
            return MyTextField(
              name: 'Repeat password',
              errorText: state.repeatPasswordError,
              obscure: true,
              onTextChanged: (text) {
                BlocProvider.of<SignUpFormCubit>(context).onRepeatPasswordChanged(text);
              },
            );
          },
        ),
        const SizedBox(height: 50),
        BlocBuilder<SignUpFormCubit, SignUpFormData>(
          builder: (context, state) {
            return MainAuthButton(
              text: 'Sign Up',
              enabled: state.isReady,
              showLoading: state.isSubmitting,
              onPressed: () async {
                final cubit = BlocProvider.of<SignUpFormCubit>(context);
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
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    LogInFormScreen.getRoute(),
                    (route) => false,
                  );
                },
                text: 'Log In',
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
