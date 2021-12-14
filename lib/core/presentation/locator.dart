import 'package:get_it/get_it.dart';
import 'package:picspeak/features/auth/data/repositories/client_repository_impl.dart';
import 'package:picspeak/features/auth/domain/interactors/log_in_interactor.dart';
import 'package:picspeak/features/auth/domain/interactors/sign_up_interactor.dart';
import 'package:picspeak/features/auth/domain/repositories/client_repository.dart';
import 'package:picspeak/features/channels_browsing/data/mock_channels_repository.dart';
import 'package:picspeak/core/domain/interactors/await_for_connection_interactor.dart';
import 'package:picspeak/core/domain/interactors/load_data_interactor.dart';
import 'package:picspeak/features/channels_browsing/domain/get_channel_list_interactor.dart';
import 'package:picspeak/features/channels_browsing/domain/get_channel_interactor.dart';
import 'package:picspeak/features/connection/data/repositories/mock_connection_repository.dart';
import 'package:picspeak/features/app_state/data/repositories/mock_app_repository.dart';
import 'package:picspeak/features/app_state/domain/load_app_interactor.dart';

final locator = GetIt.instance;

void initLocator() {
  // repositories
  final connectionRepository = MockConnectionRepository();
  final channelsRepository = MockChannelsRepository();
  final appRepository = AppRepositoryImpl(
    cacheables: [
      channelsRepository,
    ],
  );
  final clientRepository = ClientRepositoryImpl();

  // Interactors
  final awaitForConnectionInteractor = AwaitForConnectionInteractor(connectionRepository);
  locator.registerSingleton(awaitForConnectionInteractor);

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

  locator.registerLazySingleton<LoadAppInteractor>(
    () => LoadAppInteractor(appRepository),
  );

  locator.registerLazySingleton(
    () => SignUpInteractor(clientRepository),
  );

  locator.registerLazySingleton(
    () => LogInInteractor(clientRepository),
  );
}
