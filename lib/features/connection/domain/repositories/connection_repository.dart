import 'package:picspeak/features/connection/domain/entities/connection_state.dart';

abstract class ConnectionRepository {
  Stream<ConnectionState> getState(); 
}