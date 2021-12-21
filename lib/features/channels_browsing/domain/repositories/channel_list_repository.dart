import 'package:picspeak/features/channels_browsing/domain/entities/channel/channel.dart';
import 'package:picspeak/core/utils/result/result.dart';

abstract class ChannelListRepository {
  Future<List<Channel>> getCachedChannelList();
  Future<Result<List<Channel>>> loadChannelList();
}