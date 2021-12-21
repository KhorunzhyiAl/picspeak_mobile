import 'package:flutter/material.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/talk_recording_entry/talk_recording_entry.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_screen/pages/channel_recordings/widgets/talk_recording_entry_widget.dart';

class TalkRecordingsList extends StatelessWidget {
  const TalkRecordingsList({
    required this.talkRecordingEntries,
    Key? key,
  }) : super(key: key);

  final List<TalkRecordingEntry> talkRecordingEntries;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        for (TalkRecordingEntry recordingEntry in talkRecordingEntries) ...[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: TalkRecordingEntryWidget(
              talkRecordingEntry: recordingEntry,
            ),
          ),
        ]
      ],
    );
  }
}
