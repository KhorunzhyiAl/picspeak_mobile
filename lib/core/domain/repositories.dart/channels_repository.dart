import 'package:picspeak/core/domain/entities/channel.dart';
import 'package:picspeak/core/utils/failure.dart';
import 'package:picspeak/core/utils/result/result.dart';

abstract class ChannelsRepository {
  List<Channel> getChannelList();
  Future<Failure?> refesh();

  Future<Result<Channel>> loadChannel(String id);
}