import 'package:picspeak/core/utils/failure.dart';
import 'package:picspeak/core/utils/result/result.dart';

abstract class AppRepository {
  Future<Failure?> authWithToken();

  Future<Result<Unit>> logInWithPassword(String login, String password);

  Future<Result<Unit>> signUp(String login, String password);
}
