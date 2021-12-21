import 'package:injectable/injectable.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/channel/channel.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/event/event.dart';
import 'package:picspeak/features/channels_browsing/domain/repositories/channel_list_repository.dart';
import 'package:picspeak/core/utils/result/result.dart';

@preResolve
@Singleton(as: ChannelListRepository)
class ChannelListRepositoryImpl implements ChannelListRepository {
  ChannelListRepositoryImpl();

  @factoryMethod
  static Future<ChannelListRepositoryImpl> loadFromCache() async {
    await Future.delayed(const Duration(seconds: 1));
    return ChannelListRepositoryImpl();
  }

  @override
  Future<List<Channel>> getCachedChannelList() async {
    return [
      for (int i = 0; i < 15; ++i)
        Channel(
          channelId: 'channelid',
          imageId: 'imageUrl',
          name: 'Channel name lorem ipsum dolor sit amet',
          nextEventDate: DateTime.now(),
          events: [
            Event(
              eventId: 'whatever',
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
}
