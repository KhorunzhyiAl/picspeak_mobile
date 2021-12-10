import 'package:dartz/dartz.dart';
import 'package:picspeak/core/domain/entities/channel.dart';
import 'package:picspeak/core/utils/result/result.dart';

abstract class ChannelsRepository {
  List<Channel> getChannelList();
  Future<Result<void>> refesh();

  Future<Result<Channel>> loadChannel(String id);
}