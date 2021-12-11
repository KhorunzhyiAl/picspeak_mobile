import 'package:get_it/get_it.dart';
import 'package:picspeak/core/data/repositories/mock_channels_repository.dart';
import 'package:picspeak/features/channel_list/domain/interactors.dart';
import 'package:picspeak/features/connection/data/repositories/mock_connection_repository.dart';
import 'package:picspeak/features/connection/domain/repositories/connection_repository.dart';
import 'package:picspeak/features/load_app/data/repositories/mock_app_repository.dart';
import 'package:picspeak/features/load_app/domain/interactors.dart';

final locator = GetIt.instance;

void initLocator() {
  locator.registerLazySingleton<LoadAppInteractor>(
    () => LoadAppInteractor(MockAppRepository()),
  );

  final channelsRepository = MockChannelsRepository();
  final connectionRepository = MockConnectionRepository();
  locator.registerLazySingleton<GetChannellListInteractor>(
    () => GetChannellListInteractor(
      channelsRepository,
      connectionRepository,
    ),
  );
}
