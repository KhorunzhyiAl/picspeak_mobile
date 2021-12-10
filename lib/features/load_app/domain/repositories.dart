import 'package:picspeak/core/utils/failure.dart';
import 'package:picspeak/core/utils/result/result.dart';

abstract class AppRepository {
  Future<void> loadLocalData();
  Future<Failure?> authenticate();
}

