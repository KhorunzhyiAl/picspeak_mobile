import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picspeak/core/presentation/widgets/overlayed_ink_well.dart';
import 'package:picspeak/core/utils/utils.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/talk_recording_entry/talk_recording_entry.dart';

class TalkRecordingEntryWidget extends StatelessWidget {
  const TalkRecordingEntryWidget({
    required this.talkRecordingEntry,
    Key? key,
  }) : super(key: key);

  final TalkRecordingEntry talkRecordingEntry;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(5),
      ),
      clipBehavior: Clip.hardEdge,
      child: OverlayedInkWell(
        inkWell: InkWell(
          onTap: () {},
          splashColor: theme.colorScheme.onBackground.withOpacity(0.1),
          overlayColor: MaterialStateProperty.all(
            theme.colorScheme.onBackground.withOpacity(0.1),
          ),
        ),
        child: _buildContents(theme),
      ),
    );
  }

  Row _buildContents(ThemeData theme) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildDuration(theme),
        const SizedBox(width: 10),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: Text(
              talkRecordingEntry.talk.name,
              style: theme.textTheme.headline5?.copyWith(
                color: theme.colorScheme.onBackground,
              ),
            ),
          ),
        ),
      ],
    );
  }

  SizedBox _buildDuration(ThemeData theme) {
    return SizedBox(
      width: 70,
      child: Card(
        color: theme.colorScheme.surface,
        margin: EdgeInsets.zero,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: Text(
              Utils.formatDuration(talkRecordingEntry.talk.duration),
              style: theme.textTheme.caption?.copyWith(
                color: theme.colorScheme.onSurface,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
