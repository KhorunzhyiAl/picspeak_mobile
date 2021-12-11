import 'package:picspeak/core/domain/entities/channel.dart';
import 'package:picspeak/core/domain/entities/event.dart';
import 'package:picspeak/core/domain/repositories.dart/channels_repository.dart';
import 'package:picspeak/core/utils/failure.dart';
import 'package:picspeak/core/utils/result/result.dart';

class MockChannelsRepository implements ChannelsRepository {
  @override
  List<Channel> getChannelList() {
    return [
      for (int i = 0; i < 15; ++i)
        Channel(
          id: 'channelid',
          imageUrl: 'imageUrl',
          name: 'Channel name lorem ipsum dolor stt amet',
          nextEventDate: DateTime.now(),
          events: [
            Event(
              name: 'Event name lorem ipsum dolor sit amet something something',
              start: DateTime.now(),
              talks: [],
            ),
          ],
        ),
    ];
  }

  @override
  Future<Failure?> refesh() async {
    await Future.delayed(const Duration(seconds: 2));
  }

  @override
  Future<Result<Channel>> loadChannel(String id) {
    // TODO: implement loadChannel
    throw UnimplementedError();
  }
}
