import 'package:picspeak/features/app_state/domain/entities/connection_state.dart';

abstract class ConnectionRepository {
  Stream<ConnectionState> getState(); 
}