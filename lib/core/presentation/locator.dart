import 'package:get_it/get_it.dart';
import 'package:picspeak/core/data/repositories/mock_channels_repository.dart';
import 'package:picspeak/core/domain/interactors/await_for_connection_interactor.dart';
import 'package:picspeak/core/domain/interactors/load_data_interactor.dart';
import 'package:picspeak/features/channel_list/domain/get_channel_list_interactor.dart';
import 'package:picspeak/features/channel_view/domain/interactors.dart';
import 'package:picspeak/features/connection/data/repositories/mock_connection_repository.dart';
import 'package:picspeak/features/connection/domain/repositories/connection_repository.dart';
import 'package:picspeak/features/load_app/data/repositories/mock_app_repository.dart';
import 'package:picspeak/features/load_app/domain/interactors.dart';

final locator = GetIt.instance;

void initLocator() {
  locator.registerLazySingleton<LoadAppInteractor>(
    () => LoadAppInteractor(MockAppRepository()),
  );

  final connectionRepository = MockConnectionRepository();
  final awaitForConnectionInteractor = AwaitForConnectionInteractor(connectionRepository);
  locator.registerSingleton<AwaitForConnectionInteractor>(awaitForConnectionInteractor);

  final channelsRepository = MockChannelsRepository();
  
  locator.registerLazySingleton<GetChannellListInteractor>(
    () => GetChannellListInteractor(
      channelsRepository,
      LoadDataInteractor(awaitForConnectionInteractor),
    ),
  );

  locator.registerLazySingleton(
    () => GetChannelInteractor(
      channelsRepository,
      LoadDataInteractor(awaitForConnectionInteractor),
    ),
  );
}
