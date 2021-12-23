import 'package:injectable/injectable.dart';
import 'package:picspeak/core/utils/result/result.dart';
import 'package:picspeak/features/app_state/domain/app_repository.dart';

@LazySingleton()
class SignUpInteractor {
  SignUpInteractor(this._clientRepository);

  final AppRepository _clientRepository;

  Future<Result<Unit>> call(String login, String password) async {
    return _clientRepository.signUp(login, password);
  }
}