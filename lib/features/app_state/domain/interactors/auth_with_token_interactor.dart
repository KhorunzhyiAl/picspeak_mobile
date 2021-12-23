import 'package:injectable/injectable.dart';
import 'package:picspeak/features/app_state/domain/app_repository.dart';
import 'package:picspeak/features/app_state/domain/entities/auth_state.dart';

@LazySingleton()
class AuthWithTokenInteractor {
  AuthWithTokenInteractor(AppRepository repository) : _repository = repository;

  final AppRepository _repository;

  Future<AuthState> call() async {
    final failure = await _repository.authWithToken();
    if (failure != null) {
      return AuthState.unauthenticated(failure);
    } else {
      return const AuthState.authenticated();
    }
  }
}
