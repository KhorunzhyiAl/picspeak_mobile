import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:picspeak/domain/entities/channel.dart';

/// Has methods like hashmap, but notifies listeners when values change.
class ChannelMap with ChangeNotifier {
  ChannelMap({List<Channel> channels = const []}) {
    for (Channel channel in channels) {
      _channels[channel.id] = channel;
    }
  }

  int get length => _channels.length;
  Iterable<Channel> get values => _channels.values;

  void addChannels(List<Channel> channels) {
    for (Channel channel in channels) {
      _channels[channel.id] = channel;
    }
    notifyListeners();
  }

  void operator []=(String s, Channel value) {
    notifyListeners();
    _channels[s] = value;
  }

  Channel? operator [](String s) => _channels[s];

  final LinkedHashMap<String, Channel> _channels = LinkedHashMap<String, Channel>();
}
