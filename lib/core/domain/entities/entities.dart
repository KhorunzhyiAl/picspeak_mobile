import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:picspeak/core/domain/repositories.dart';
import 'package:picspeak/core/utils/failure.dart';
part 'entities.freezed.dart';

@freezed
class Channel with _$Channel {
  const factory Channel({
    required String id,
    required String imageUrl,
    required String name,
    required DateTime nextEvent,
  }) = _Channel;
}

@freezed
class LocalData with _$LocalData {
  const factory LocalData({
    required Map<String, Channel> channels,
  }) = _LocalData;
}

@freezed
class LoadAppInteractorStates with _$LoadAppInteractorStates {
  const factory LoadAppInteractorStates.localDataLoaded(LocalData localData) = _LocalDataLoaded;
  const factory LoadAppInteractorStates.authenticated(ClientRepository client) = _Authenticated;
  const factory LoadAppInteractorStates.unauthenticated(Failure failure) = _Unauthenticated;
}
