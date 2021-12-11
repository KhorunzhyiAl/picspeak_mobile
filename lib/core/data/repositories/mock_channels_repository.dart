import 'package:picspeak/core/domain/entities/channel.dart';
import 'package:picspeak/core/domain/entities/event.dart';
import 'package:picspeak/core/domain/repositories/channels_repository.dart';
import 'package:picspeak/core/utils/result/result.dart';

class MockChannelsRepository implements ChannelsRepository {
  @override
  List<Channel> getCachedChannelList() {
    return [
      for (int i = 0; i < 15; ++i)
        Channel(
          id: 'channelid',
          imageUrl: 'imageUrl',
          name: 'Channel name lorem ipsum dolor sit amet',
          nextEventDate: DateTime.now(),
          events: [
            Event(
              name: 'Event name lorem ipsum dolor sit amet something something',
              start: DateTime.now(),
              duration: const Duration(
                hours: 2,
                minutes: 30,
              ),
              talks: [],
            ),
          ],
        ),
    ];
  }

  @override
  Future<Result<List<Channel>>> loadChannelList() async {
    await Future.delayed(const Duration(seconds: 2));
    return Result.ok(getCachedChannelList());
  }

  @override
  Future<Result<Channel>> loadChannel(String id) async {
    await Future.delayed(const Duration(seconds: 2));
    return Result.ok(
      Channel(
        id: 'channelid',
        imageUrl: 'imageUrl',
        name: 'Channel name lorem ipsum dolor sit amet',
        nextEventDate: DateTime.now(),
        events: [
          Event(
            name: 'Event name lorem ipsum dolor sit amet something something',
            start: DateTime.now(),
            duration: const Duration(
              hours: 2,
              minutes: 30,
            ),
            talks: [],
          ),
          Event(
            name: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor'
                ' incididunt ut labore et dolore magna aliqua. ',
            start: DateTime.now(),
            duration: const Duration(
              hours: 0,
              minutes: 30,
            ),
            talks: [],
          ),
          Event(
            name: 'Event name lorem ipsum dolor sit amet something something',
            start: DateTime.now(),
            duration: const Duration(
              hours: 2,
              minutes: 30,
            ),
            talks: [],
          ),
          Event(
            name: 'Event name lorem ipsum dolor sit amet something something',
            start: DateTime.now(),
            duration: const Duration(
              hours: 2,
              minutes: 30,
            ),
            talks: [],
          ),
        ],
      ),
    );
  }
}
