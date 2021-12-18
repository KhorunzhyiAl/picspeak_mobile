import 'package:injectable/injectable.dart';
import 'package:picspeak/core/utils/result/result.dart';
import 'package:picspeak/features/auth/domain/repositories/client_repository.dart';

@LazySingleton(as: ClientRepository)
class ClientRepositoryImpl implements ClientRepository {
  @override
  Future<Result<Unit>> logInWithCache() async {
    return Result.ok(Unit());
  }

  @override
  Future<Result<Unit>> logInWithPassword(String login, String password) async {
    return Result.ok(Unit());
  }

  @override
  Future<Result<Unit>> signUp(String login, String password) async {
    await Future.delayed(const Duration(seconds: 1));
    return Result.ok(Unit());
  }
}
