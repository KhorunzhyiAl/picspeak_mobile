import 'package:picspeak/features/connection/domain/entities/connection_state.dart';
import 'package:picspeak/features/connection/domain/repositories/connection_repository.dart';

class MockConnectionRepository implements ConnectionRepository {
  @override
  Stream<ConnectionState> getState() async* {
    yield ConnectionState.connected;
  }
}