import 'package:picspeak/core/data/utils/cacheable.dart';
import 'package:picspeak/core/utils/failure.dart';
import 'package:picspeak/features/app_state/domain/app_repository.dart';

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

    return const Failure.empty();
  }
}
