import 'package:picspeak/core/utils/failure.dart';
import 'package:picspeak/features/load_app/domain/repositories.dart';

class MockAppRepository implements AppRepository {
  @override
  Future<void> loadLocalData() async {
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Future<Failure?> authenticate() async {
    await Future.delayed(const Duration(seconds: 5));

    return null;
  }
}