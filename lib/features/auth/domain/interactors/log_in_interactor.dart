import 'package:injectable/injectable.dart';
import 'package:picspeak/core/utils/loading_state/loading_state.dart';
import 'package:picspeak/core/utils/result/result.dart';
import 'package:picspeak/features/auth/domain/repositories/client_repository.dart';

@LazySingleton()
class LogInInteractor {
  LogInInteractor(this._clientRepository);

  final ClientRepository _clientRepository;

  Future<Result<Unit>> call(String login, String password) async {
    return _clientRepository.logInWithPassword(login, password);
  }
}
