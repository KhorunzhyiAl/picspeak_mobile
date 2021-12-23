import 'package:injectable/injectable.dart';
import 'package:picspeak/features/app_state/domain/entities/connection_state.dart';
import 'package:picspeak/features/app_state/domain/repositories/connection_repository.dart';

@Injectable()
class AwaitForConnectionInteractor {
  AwaitForConnectionInteractor(this._connectionRepository);
  
  final ConnectionRepository _connectionRepository;

  Future<void> call() async {
    final connectionStatusStream = _connectionRepository.getState();
    if (await connectionStatusStream.last == ConnectionState.offline) {
      await for (final status in connectionStatusStream) {
        if (status == ConnectionState.offline) break;
      }
    }
  }
}
