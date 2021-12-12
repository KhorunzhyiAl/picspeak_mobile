import 'package:picspeak/core/domain/entities/channel.dart';
import 'package:picspeak/core/utils/result/result.dart';

abstract class ChannelsRepository {
  Future<List<Channel>> getCachedChannelList();
  Future<Result<List<Channel>>> loadChannelList();

  Future<Result<Channel>> loadChannel(String id);
  Future<Result<Channel>> getCachedChannel(String id);
}