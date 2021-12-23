import 'package:injectable/injectable.dart';
import 'package:picspeak/features/app_state/domain/entities/connection_state.dart';
import 'package:picspeak/features/app_state/domain/repositories/connection_repository.dart';

@LazySingleton(as: ConnectionRepository)
class MockConnectionRepository implements ConnectionRepository {
  @override
  Stream<ConnectionState> getState() async* {
    yield ConnectionState.connected;
  }
}