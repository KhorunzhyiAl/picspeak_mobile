import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:picspeak/core/utils/result/result.dart';
import 'package:picspeak/core/utils/utils.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/channel/channel.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/event/event.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/event_recording_entry/event_recording_entry.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/talk/talk.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/talk_recording_entry/talk_recording_entry.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/user/user.dart';
import 'package:picspeak/features/channels_browsing/domain/repositories/channel_repository.dart';

@LazySingleton(as: ChannelRepository)
class ChannelRepositoryImpl implements ChannelRepository {
  @override
  Future<Result<Channel>> loadChannel(String id) async {
    debugPrint('loadChannel called');

    await Future.delayed(const Duration(seconds: 2));
    return Result.ok(
      Channel(
        channelId: 'channelid',
        imageId: 'imageUrl',
        name: 'Channel name lorem ipsum dolor sit amet',
        nextEventDate: DateTime.now(),
        description: Utils.loremIpsum,
        members: [
          for (int i = 0; i < 5; ++i)
            User(
              userId: 'userId$i',
              username: 'user${i}something',
            )
        ],
        events: [
          Event(
            eventId: 'event2',
            name: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor'
                ' incididunt ut labore et dolore magna aliqua. ',
            description: Utils.loremIpsum,
            start: DateTime.now(),
            duration: const Duration(
              hours: 0,
              minutes: 30,
            ),
            talks: [
              for (int i = 0; i < 4; ++i)
                Talk(
                  talkId: 'talkId',
                  name: 'Talk name lorem ipsum dolor sit amet something something',
                  duration: const Duration(hours: 1, minutes: 15),
                  speakerId: 'speakerId',
                  speakerUsername: 'Xx_UsernamE_xX',
                  slidesAreAvailable: i % 2 == 0, // just random stuff
                ),
            ],
          ),
          for (int i = 0; i < 3; ++i)
            Event(
              eventId: 'event1',
              name: 'Event name lorem ipsum dolor sit amet something something',
              description: Utils.loremIpsum,
              start: DateTime.now(),
              duration: const Duration(
                hours: 2,
                minutes: 30,
              ),
              talks: [
                for (int i = 0; i < 4; ++i)
                  const Talk(
                    talkId: 'talkId',
                    name: 'Talk name lorem ipsum dolor sit amet something something',
                    duration: Duration(hours: 1, minutes: 15),
                    speakerId: 'speakerId',
                    speakerUsername: 'Xx_UsernamE_xX',
                    slidesAreAvailable: true,
                  ),
              ],
            ),
        ],
      ),
    );
  }

  @override
  Future<Result<Channel>> getCachedChannel(String id) async {
    return await loadChannel(id);
  }

  @override
  Future<Result<List<EventRecordingEntry>>> getEventRecordings(String channelId) async {
    await Future.delayed(const Duration(seconds: 1));
    return Result.ok([
      for (int i = 0; i < 5; ++i)
        EventRecordingEntry(
          event: Event(
            eventId: 'event#$i',
            name: 'Event name lorem ipsum dolor sit amet something something',
            description: Utils.loremIpsum,
            start: DateTime.now(),
            duration: const Duration(
              hours: 2,
              minutes: 30,
            ),
            talks: [],
          ),
          totalDuration: Duration(hours: i, minutes: i * 19),
          talkRecordings: [
            for (int i = 0; i < 3; ++i)
              TalkRecordingEntry(
                recordingId: 'recording#$i',
                eventId: 'event#$i',
                duraition: Duration(hours: i, minutes: i * 5),
                talk: Talk(
                  talkId: 'talk#$i',
                  name: 'Talk name lorem ipsum dolor sit amet something something',
                  duration: const Duration(hours: 2, minutes: 30),
                  speakerId: 'speaker#$i',
                  speakerUsername: 'username',
                  slidesAreAvailable: true,
                ),
              ),
          ],
        ),
    ]);
  }
}
