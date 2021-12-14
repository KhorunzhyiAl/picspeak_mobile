import 'package:picspeak/core/data/utils/cacheable.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/channel.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/event.dart';
import 'package:picspeak/features/channels_browsing/domain/repositories/channels_repository.dart';
import 'package:picspeak/core/utils/result/result.dart';

class MockChannelsRepository with Cacheable implements ChannelsRepository {
  @override
  Future<void> cache() async {
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Future<void> uncache() async {
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Future<List<Channel>> getCachedChannelList() async {
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
    return Result.ok(await getCachedChannelList());
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

  @override
  Future<Result<Channel>> getCachedChannel(String id) async {
    return await loadChannel(id);
  }
}
