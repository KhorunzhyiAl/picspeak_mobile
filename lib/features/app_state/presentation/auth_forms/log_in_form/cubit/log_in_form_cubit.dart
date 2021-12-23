import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:picspeak/features/app_state/domain/interactors/log_in_interactor.dart';
import 'package:picspeak/features/app_state/presentation/app_state/blocs/app_state_cubit.dart';
import 'package:picspeak/features/app_state/presentation/auth_forms/log_in_form/cubit/log_in_form_data.dart';

@Injectable()
class LogInFormCubit extends Cubit<LogInFormData> {
  LogInFormCubit(
    this._logInInteractor,
  ) : super(const LogInFormData());

  final LogInInteractor _logInInteractor;
  AppStateCubit? _appStateCubit;

  void provideAppStateCubit(AppStateCubit cubit) {
    _appStateCubit = cubit;
  }

  void onLoginChanged(String login) {
    emit(state.copyWith(
      login: login,
    ));

    _updateStateReadiness();
  }

  String _getLoginError(String login) {
    if (login.isEmpty) {
      return 'Please, enter your login';
    }

    return '';
  }

  void onPasswordChanged(String password) {
    emit(state.copyWith(
      password: password,
    ));

    _updateStateReadiness();
  }

  String _getPasswordError(String password) {
    if (password.isEmpty) {
      return 'Please, enter your password';
    }

    return '';
  }

  void _updateStateReadiness() async {
    bool isReady = _getLoginError(state.login).isEmpty && _getPasswordError(state.password).isEmpty;

    emit(state.copyWith(isReady: isReady));
  }

  Future<bool> onSubmit() async {
    _updateStateReadiness();
    if (!state.isReady) return false;

    emit(state.copyWith(isSubmitting: true));
    final result = await _logInInteractor(state.login, state.password);

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
