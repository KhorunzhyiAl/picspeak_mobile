import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:picspeak/domain/app/app_state/app_state.dart';
import 'package:picspeak/domain/app/app_data/app_data.dart';

class App {
  App();

  ValueListenable<AppState> get state => _state;

  Future<AppState> loadLocalData() async {
    if (_state.value is! Empty) {
      return _state.value;
    }

    final appData = await AppData.load();
    _setAppState(AppState.localDataLoaded(appData: appData));

    return _state.value;
  }

  Future<AppState> connect() async {
    final state = _state.value;

    if (state is LocalDataLoaded) {
      // TODO: Take cookie_jar from localData and add it to dio. then, if the cookie exists and is
      // correct, set [AppState] to [Authenticated], otherwise, [Unauthenticated]

      await Future.delayed(const Duration(milliseconds: 2000));
      final dio = Dio();

      _state.value = AppState.authenticated(appData: state.appData, dio: dio);
    }

    return _state.value;
  }

  Future<AppState> authenticate() async {
    final state = _state.value;
    if (state is Unauthenticated) {
      // TODO: actually authenticate
      _state.value = AppState.authenticated(appData: state.appData, dio: state.dio);
    }
    return _state.value;
  }

  final ValueNotifier<AppState> _state = ValueNotifier(const AppState.empty());

  /// TODO: take care of disposing of some parameters
  void _setAppState(AppState state) {
    _state.value = state;
  }
}
