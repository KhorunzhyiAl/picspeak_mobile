import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:picspeak/features/authentication/domain/interactors/sign_up_interactor.dart';
import 'package:picspeak/features/app_state/presentation/app_state/blocs/app_state_cubit.dart';
import 'package:picspeak/features/authentication/presentation/sign_up_form/cubit/sign_up_form_data.dart';

@Injectable()
class SignUpFormCubit extends Cubit<SignUpFormData> {
  SignUpFormCubit(
    this._signUpInteractor,
  ) : super(const SignUpFormData());

  final SignUpInteractor _signUpInteractor;
  AppStateCubit? _appStateCubit;

  void provideAppStateCubit(AppStateCubit cubit) {
    _appStateCubit = cubit;
  }

  void onLoginChanged(String login) async {
    emit(state.copyWith(
      login: login,
      loginError: _getLoginError(login),
      loginIsTaken: false,
    ));

    _updateStateReadiness();

    final isTaken = await _isLoginTaken(login);

    // If the user has changed the text by the time [_isLoginTaken] completed, it's result is not
    // valid anymore.
    if (state.login != login) return;

    if (isTaken) {
      emit(state.copyWith(
        loginError: "Login is taken",
        loginIsTaken: true,
        isReady: false,
      ));
    } else {
      emit(state.copyWith(
        loginError: '',
        loginIsTaken: false,
      ));
    }
  }

  String _getLoginError(String login) {
    if (login.length < 2) {
      return 'Login must be longer than 2 characters';
    }

    if (login.length > 32) {
      return 'Login must be shorter than 32 characters';
    }

    return '';
  }

  Future<bool> _isLoginTaken(String login) async {
    // TODO: implement
    await Future.delayed(const Duration(seconds: 1));
    return false;
  }

  void onPasswordChanged(String password) {
    emit(state.copyWith(
      password: password,
      passwordError: _getPasswordError(password),
      repeatPasswordError: state.repeatPassword.isNotEmpty
          ? _getRepeatPasswordError(
              password,
              state.repeatPassword,
            )
          : '',
    ));

    _updateStateReadiness();
  }

  String _getPasswordError(String password) {
    if (password.length < 6) {
      return 'Password must be longer than 6 characters';
    }

    return '';
  }

  void onRepeatPasswordChanged(String repeatedPassword) {
    emit(state.copyWith(
      repeatPassword: repeatedPassword,
      repeatPasswordError: _getRepeatPasswordError(state.password, repeatedPassword),
    ));

    _updateStateReadiness();
  }

  String _getRepeatPasswordError(String password, String repeatPassword) {
    if (repeatPassword != password) {
      return "Passwords don't match";
    }

    return '';
  }

  void _updateStateReadiness() async {
    bool isReady = _getLoginError(state.login).isEmpty &&
        !state.loginIsTaken &&
        _getPasswordError(state.password).isEmpty &&
        _getRepeatPasswordError(state.password, state.repeatPassword).isEmpty;

    emit(state.copyWith(isReady: isReady));
  }

  Future<bool> onSubmit() async {
    _updateStateReadiness();
    if (!state.isReady) return false;

    emit(state.copyWith(isSubmitting: true));
    final result = await _signUpInteractor(state.login, state.password);

    return result.map(
      ok: (_) {
        _appStateCubit?.onUserAuthSuccessfull();
        return true;
      },
      failure: (a) {
        emit(state.copyWith(
          generalError: a.failure.message,
          isSubmitting: false,
        ));
        return false;
      },
    );
  }
}
