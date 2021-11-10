import 'package:picspeak/domain/app/app_data/channel_map.dart';
import 'package:picspeak/domain/app/app_data/user_data.dart';
import 'package:picspeak/domain/data/channel.dart';

/// Allows to change and get notified about the changes in the global data.
class AppData {
  /// Retrieves the data from the local storage.
  static Future<AppData> load() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return AppData._create(
      channels: _hardcodedRooms,
      userData: UserData(),
    );
  }

  AppData._create({required List<Channel> channels, required this.userData})
      : channelMap = ChannelMap(channels: channels);

  /// Puts the data this currently holds to the local storage
  Future<void> saveToStorage() async {}

  final ChannelMap channelMap;
  final UserData userData;
}

// hardcoded rooms (temp)
const _hardcodedRooms = [
  Channel(id: 'abc1', name: 'lorem'),
  Channel(id: 'abc2', name: 'ipsum'),
  Channel(id: 'abc3', name: 'idk'),
  Channel(id: 'abc4', name: 'group'),
  Channel(id: 'ab5c', name: 'some channel'),
  Channel(id: 'ab6c', name: 'another channel'),
  Channel(id: 'a7bc', name: 'something something'),
  Channel(id: 'a8bc', name: 'whatever'),
  Channel(id: 'ab9c', name: 'ijk'),
  Channel(id: 'ab0c', name: 'wowhellohi'),
  Channel(id: 'a12bc', name: 'bruh'),
  Channel(id: 'abc123', name: 'something'),
];
