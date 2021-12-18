// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:picspeak/core/data/utils/cacheable_loader.dart' as _i3;
import 'package:picspeak/core/domain/interactors/await_for_connection_interactor.dart'
    as _i14;
import 'package:picspeak/features/app_state/data/repositories/app_repository_impl.dart'
    as _i13;
import 'package:picspeak/features/app_state/domain/app_repository.dart' as _i12;
import 'package:picspeak/features/app_state/domain/load_app_interactor.dart'
    as _i17;
import 'package:picspeak/features/app_state/presentation/blocs/app_state_cubit.dart'
    as _i19;
import 'package:picspeak/features/auth/data/repositories/client_repository_impl.dart'
    as _i7;
import 'package:picspeak/features/auth/domain/interactors/log_in_interactor.dart'
    as _i10;
import 'package:picspeak/features/auth/domain/interactors/sign_up_interactor.dart'
    as _i11;
import 'package:picspeak/features/auth/domain/repositories/client_repository.dart'
    as _i6;
import 'package:picspeak/features/auth/presentation/sign_up_form/cubit/sign_up_form_cubit.dart'
    as _i18;
import 'package:picspeak/features/channels_browsing/data/mock_channels_repository.dart'
    as _i5;
import 'package:picspeak/features/channels_browsing/domain/get_channel_interactor.dart'
    as _i15;
import 'package:picspeak/features/channels_browsing/domain/get_channel_list_interactor.dart'
    as _i16;
import 'package:picspeak/features/channels_browsing/domain/repositories/channels_repository.dart'
    as _i4;
import 'package:picspeak/features/channels_browsing/presentation/channel_list_screen/cubit/channel_list_cubit.dart'
    as _i21;
import 'package:picspeak/features/channels_browsing/presentation/channel_screen/cubit/channel_cubit.dart'
    as _i20;
import 'package:picspeak/features/connection/data/repositories/mock_connection_repository.dart'
    as _i9;
import 'package:picspeak/features/connection/domain/repositories/connection_repository.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.CacheableLoader>(() => _i3.CacheableLoader());
  gh.singleton<_i4.ChannelsRepository>(
      _i5.MockChannelsRepository(get<_i3.CacheableLoader>()));
  gh.lazySingleton<_i6.ClientRepository>(() => _i7.ClientRepositoryImpl());
  gh.lazySingleton<_i8.ConnectionRepository>(
      () => _i9.MockConnectionRepository());
  gh.lazySingleton<_i10.LogInInteractor>(
      () => _i10.LogInInteractor(get<_i6.ClientRepository>()));
  gh.lazySingleton<_i11.SignUpInteractor>(
      () => _i11.SignUpInteractor(get<_i6.ClientRepository>()));
  gh.lazySingleton<_i12.AppRepository>(() =>
      _i13.AppRepositoryImpl(cacheableLoader: get<_i3.CacheableLoader>()));
  gh.factory<_i14.AwaitForConnectionInteractor>(
      () => _i14.AwaitForConnectionInteractor(get<_i8.ConnectionRepository>()));
  gh.lazySingleton<_i15.GetChannelInteractor>(() => _i15.GetChannelInteractor(
      get<_i4.ChannelsRepository>(), get<_i14.AwaitForConnectionInteractor>()));
  gh.lazySingleton<_i16.GetChannellListInteractor>(() =>
      _i16.GetChannellListInteractor(get<_i4.ChannelsRepository>(),
          get<_i14.AwaitForConnectionInteractor>()));
  gh.lazySingleton<_i17.LoadAppInteractor>(
      () => _i17.LoadAppInteractor(get<_i12.AppRepository>()));
  gh.lazySingleton<_i18.SignUpFormCubit>(
      () => _i18.SignUpFormCubit(get<_i11.SignUpInteractor>()));
  gh.lazySingleton<_i19.AppStateCubit>(
      () => _i19.AppStateCubit(get<_i17.LoadAppInteractor>()));
  gh.lazySingleton<_i20.ChannelCubit>(
      () => _i20.ChannelCubit(get<_i15.GetChannelInteractor>()));
  gh.lazySingleton<_i21.ChannelListCubit>(() => _i21.ChannelListCubit(
      getChannelList: get<_i16.GetChannellListInteractor>()));
  return get;
}
