import 'package:picspeak/core/data/repositories/cacheable.dart';
import 'package:picspeak/core/utils/failure.dart';
import 'package:picspeak/features/load_app/domain/repositories.dart';

class AppRepositoryImpl implements AppRepository {
  AppRepositoryImpl({
    required this.cacheables,
  });

  final List<Cacheable> cacheables;

  @override
  Future<void> loadLocalData() async {
    await Future.wait(cacheables.map(
      (e) => e.uncache(),
    ));
  }

  Future<void> cacheEveryhting() async {
    await Future.wait(cacheables.map(
      (e) => e.cache(),
    ));
  }

  @override
  Future<Failure?> authenticate() async {
    await Future.delayed(const Duration(seconds: 5));

    return null;
  }
}
