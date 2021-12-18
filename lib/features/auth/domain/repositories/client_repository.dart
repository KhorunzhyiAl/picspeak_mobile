import 'package:picspeak/core/utils/result/result.dart';

abstract class ClientRepository {
  Future<Result<Unit>> logInWithPassword(String login, String password);
  Future<Result<Unit>> logInWithCache();

  Future<Result<Unit>> signUp(String login, String password);
}