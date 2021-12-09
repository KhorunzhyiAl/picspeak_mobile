import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:picspeak/core/domain/entities/entities.dart';
import 'package:picspeak/core/utils/failure.dart';
part 'channel_list_state.freezed.dart';

@freezed
class ChannelListState with _$ChannelListState {
  const factory ChannelListState.initial() = _Initial;
  const factory ChannelListState.loading(List<Channel> cachedList) = _Loading;
  const factory ChannelListState.failure(Failure failure) = _Failure;
  const factory ChannelListState.ready(List<Channel> list) = _Ready;
}
