import 'package:get_it/get_it.dart';
import 'package:picspeak/features/load_app/data/repositories/mock_app_repository.dart';
import 'package:picspeak/features/load_app/domain/interactors.dart';

final locator = GetIt.instance;

void initLocator() {
  locator.registerLazySingleton<LoadAppInteractor>(
    () => LoadAppInteractor(MockAppRepository()),
  );
}
