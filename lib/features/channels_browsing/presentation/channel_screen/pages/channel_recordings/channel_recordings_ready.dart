import 'package:flutter/cupertino.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/event_recording_entry/event_recording_entry.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_screen/pages/channel_recordings/widgets/event_recording_entry_widget.dart';

class ChannelRecordingsReady extends StatelessWidget {
  const ChannelRecordingsReady({
    required this.recordings,
    Key? key,
  }) : super(key: key);

  final List<EventRecordingEntry> recordings;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return EventRecordingEntryWidget(
                eventRecordingEntry: recordings[index],
              );
            },
            childCount: recordings.length,
          ),
        ),
      ],
    );
  }
}
