import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:picspeak/domain/app/app.dart';
import 'package:picspeak/domain/app/app_data/app_data.dart';
import 'package:picspeak/domain/entities/channel.dart';
import 'package:picspeak/domain/utils/loading_state/loading_state.dart';

class ChannelModel with ChangeNotifier {
  LoadingState<Channel> get channelData => _channelData;

  ChannelModel({
    required String channelId,
    required App app,
  }) : _app = app {
    final channel = app.state.value.getAppData().channelMap[channelId];
    if (channel != null) {
      _channelData = LoadingState.ready(channel);
    }
    
    _runRefreshLoop();
  }

  static Future<Channel> loadChannel(
    String channelId,
    AppData appData,
  ) async {
    await Future.delayed(const Duration(milliseconds: 1500));

    var channel = Channel(id: channelId, name: 'channel name (loadChannel)');
    appData.channelMap[channelId] = channel;
    return channel;
  }

  void dispose() {
    _isRefreshing = false;
  }

  /// Continuously refreshes the data.
  ///
  /// Refresh is only performed when there is a connection to the server.
  /// The loop stops when [_isRefreshing] is set to false (this happens in [dispose])
  Future<void> _runRefreshLoop() async {
    while (_isRefreshing) {
      await _app.state.value.map(
        localDataLoaded: (a) async {},
        authenticated: (a) async {
          await _refresh(a.dio, a.appData);
        },
        unauthenticated: (a) async {
          await _refresh(a.dio, a.appData);
        },
        empty: (a) async {},
      );

      await Future.delayed(const Duration(milliseconds: 5000));
    }
  }

  Future<void> _refresh(Dio dio, AppData appData) async {
    
  }

  LoadingState<Channel> _channelData = const LoadingState.loading();
  final App _app;

  /// Stops the refresh loop when set to false.
  bool _isRefreshing = true;
}
