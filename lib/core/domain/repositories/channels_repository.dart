import 'package:picspeak/core/domain/entities/channel.dart';
import 'package:picspeak/core/utils/result/result.dart';

abstract class ChannelsRepository {
  List<Channel> getCachedChannelList();
  Future<Result<List<Channel>>> loadChannelList();

  Future<Result<Channel>> loadChannel(String id);
}