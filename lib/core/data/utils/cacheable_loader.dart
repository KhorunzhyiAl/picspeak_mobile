import 'package:injectable/injectable.dart';
import 'package:picspeak/core/data/utils/cacheable.dart';

/// Allows to register a cacheable repository that will be loaded during the loading of 
/// the app.
@LazySingleton()
class CacheableLoader {
  void addCacheable(Cacheable cacheable) {
    cacheables.add(cacheable);
  }

  final Set<Cacheable> cacheables = {};

  Future<void> loadAll() async {
    await Future.wait(
      cacheables.toList().map((e) => e.load()),
    );
  }

  Future<void> cacheAll() async {
    await Future.wait(
      cacheables.toList().map((e) => e.cache()),
    );
  }
}
