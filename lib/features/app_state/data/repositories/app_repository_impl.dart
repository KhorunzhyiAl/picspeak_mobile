import 'package:injectable/injectable.dart';
import 'package:picspeak/core/data/utils/cacheable.dart';
import 'package:picspeak/core/data/utils/cacheable_loader.dart';
import 'package:picspeak/core/utils/failure.dart';
import 'package:picspeak/features/app_state/domain/app_repository.dart';

@LazySingleton(as: AppRepository)
class AppRepositoryImpl implements AppRepository {
  AppRepositoryImpl({
    required this.cacheableLoader,
  });

  final CacheableLoader cacheableLoader;

  @override
  Future<void> loadLocalData() async {
    await cacheableLoader.loadAll();
  }

  Future<void> cacheAll() async {
    await cacheableLoader.cacheAll();
  }

  @override
  Future<Failure?> authenticate() async {
    await Future.delayed(const Duration(seconds: 5));

    return const Failure.empty();
  }
}
