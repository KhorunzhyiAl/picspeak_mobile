import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:picspeak/core/domain/entities/channel.dart';
import 'package:picspeak/core/utils/failure.dart';
part 'channel_state.freezed.dart';

@freezed
class ChannelState with _$ChannelState {
  const factory ChannelState.loading() = _Loading;
  const factory ChannelState.ready(Channel channel) = _Ready;
  const factory ChannelState.failure(Failure failure) = _Failure;
}