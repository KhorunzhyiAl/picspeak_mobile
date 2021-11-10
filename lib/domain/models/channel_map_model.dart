import 'package:flutter/cupertino.dart';
import 'package:picspeak/domain/app/app.dart';
import 'package:picspeak/domain/app/app_data/channel_map.dart';
import 'package:picspeak/domain/data/channel.dart';

class ChannelMapModel {
  ChannelMapModel({
    required this.channelMap,
    required App app,
  }) : _app = app;

  List<Channel> get asList => channelMap.values.toList();

  ChannelMap channelMap;
  App _app;
}
