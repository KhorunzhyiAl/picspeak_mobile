import 'package:injectable/injectable.dart';
import 'package:picspeak/core/utils/failure.dart';
import 'package:picspeak/core/utils/result/result.dart';
import 'package:picspeak/features/app_state/domain/app_repository.dart';

@LazySingleton(as: AppRepository)
class AppRepositoryImpl implements AppRepository {
  AppRepositoryImpl();

  @override
  Future<Failure?> authWithToken() async {
    await Future.delayed(const Duration(seconds: 5));

    return Failure.empty();
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
