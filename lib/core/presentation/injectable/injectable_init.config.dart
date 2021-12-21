// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:picspeak/core/domain/interactors/await_for_connection_interactor.dart'
    as _i17;
import 'package:picspeak/features/app_state/data/repositories/app_repository_impl.dart'
    as _i4;
import 'package:picspeak/features/app_state/data/repositories/mock_connection_repository.dart'
    as _i11;
import 'package:picspeak/features/app_state/domain/app_repository.dart' as _i3;
import 'package:picspeak/features/app_state/domain/interactors/auth_with_token_interactor.dart'
    as _i5;
import 'package:picspeak/features/app_state/domain/interactors/log_in_interactor.dart'
    as _i14;
import 'package:picspeak/features/app_state/domain/interactors/sign_up_interactor.dart'
    as _i15;
import 'package:picspeak/features/app_state/domain/repositories/connection_repository.dart'
    as _i10;
import 'package:picspeak/features/app_state/presentation/app_state/blocs/app_state_cubit.dart'
    as _i16;
import 'package:picspeak/features/app_state/presentation/auth_forms/sign_up_form/cubit/sign_up_form_cubit.dart'
    as _i21;
import 'package:picspeak/features/channels_browsing/data/channel_list_repository_impl.dart'
    as _i7;
import 'package:picspeak/features/channels_browsing/data/channel_repository_impl.dart'
    as _i9;
import 'package:picspeak/features/channels_browsing/domain/get_channel_interactor.dart'
    as _i12;
import 'package:picspeak/features/channels_browsing/domain/get_channel_list_interactor.dart'
    as _i20;
import 'package:picspeak/features/channels_browsing/domain/get_channel_recordings_interactor.dart'
    as _i13;
import 'package:picspeak/features/channels_browsing/domain/repositories/channel_list_repository.dart'
    as _i6;
import 'package:picspeak/features/channels_browsing/domain/repositories/channel_repository.dart'
    as _i8;
import 'package:picspeak/features/channels_browsing/presentation/channel_list_screen/cubit/channel_list_cubit.dart'
    as _i22;
import 'package:picspeak/features/channels_browsing/presentation/channel_screen/cubit/channel_cubit.dart'
    as _i18;
import 'package:picspeak/features/channels_browsing/presentation/channel_screen/cubit/channel_recordings_cubit.dart'
    as _i19; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.AppRepository>(() => _i4.AppRepositoryImpl());
  gh.lazySingleton<_i5.AuthWithTokenInteractor>(
      () => _i5.AuthWithTokenInteractor(get<_i3.AppRepository>()));
  await gh.singletonAsync<_i6.ChannelListRepository>(
      () => _i7.ChannelListRepositoryImpl.loadFromCache(),
      preResolve: true);
  gh.lazySingleton<_i8.ChannelRepository>(() => _i9.ChannelRepositoryImpl());
  gh.lazySingleton<_i10.ConnectionRepository>(
      () => _i11.MockConnectionRepository());
  gh.lazySingleton<_i12.GetChannelInteractor>(
      () => _i12.GetChannelInteractor(get<_i8.ChannelRepository>()));
  gh.lazySingleton<_i13.GetChannelRecordingsInteractor>(
      () => _i13.GetChannelRecordingsInteractor(get<_i8.ChannelRepository>()));
  gh.lazySingleton<_i14.LogInInteractor>(
      () => _i14.LogInInteractor(get<_i3.AppRepository>()));
  gh.lazySingleton<_i15.SignUpInteractor>(
      () => _i15.SignUpInteractor(get<_i3.AppRepository>()));
  gh.lazySingleton<_i16.AppStateCubit>(
      () => _i16.AppStateCubit(get<_i5.AuthWithTokenInteractor>()));
  gh.factory<_i17.AwaitForConnectionInteractor>(() =>
      _i17.AwaitForConnectionInteractor(get<_i10.ConnectionRepository>()));
  gh.lazySingleton<_i18.ChannelCubit>(
      () => _i18.ChannelCubit(get<_i12.GetChannelInteractor>()));
  gh.factory<_i19.ChannelRecordingsCubit>(() =>
      _i19.ChannelRecordingsCubit(get<_i13.GetChannelRecordingsInteractor>()));
  gh.lazySingleton<_i20.GetChannellListInteractor>(() =>
      _i20.GetChannellListInteractor(get<_i6.ChannelListRepository>(),
          get<_i17.AwaitForConnectionInteractor>()));
  gh.lazySingleton<_i21.SignUpFormCubit>(
      () => _i21.SignUpFormCubit(get<_i15.SignUpInteractor>()));
  gh.lazySingleton<_i22.ChannelListCubit>(() => _i22.ChannelListCubit(
      getChannelList: get<_i20.GetChannellListInteractor>()));
  return get;
}
