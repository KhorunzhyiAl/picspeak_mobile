import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picspeak/core/presentation/widgets/overlayed_ink_well.dart';
import 'package:picspeak/core/utils/utils.dart';
import 'package:picspeak/features/shared/domain/entities/event_recording_entry/event_recording_entry.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_screen/pages/channel_recordings/widgets/talk_recordings_list.dart';

class EventRecordingEntryWidget extends StatefulWidget {
  EventRecordingEntryWidget({
    required this.eventRecordingEntry,
    Key? key,
  }) : super(key: key);

  final EventRecordingEntry eventRecordingEntry;

  @override
  State<EventRecordingEntryWidget> createState() => _EventRecordingEntryWidgetState();
}

class _EventRecordingEntryWidgetState extends State<EventRecordingEntryWidget> {
  late final ValueNotifier<bool> _isExpanded;

  @override
  void initState() {
    super.initState();

    _isExpanded = ValueNotifier(false);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Card(
          color: theme.colorScheme.surface,
          elevation: 0,
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          clipBehavior: Clip.hardEdge,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: OverlayedInkWell(
            child: _buildContents(theme),
            inkWell: InkWell(
              onTap: () {
                _isExpanded.value = !_isExpanded.value;
              },
            ),
          ),
        ),
        ValueListenableBuilder<bool>(
          valueListenable: _isExpanded,
          builder: (context, isExpanded, child) {
            if (isExpanded) {
              return TalkRecordingsList(
                talkRecordingEntries: widget.eventRecordingEntry.talkRecordings,
              );
            } else {
              return const SizedBox.shrink();
            }
          },
        ),
      ],
    );
  }

  Padding _buildContents(ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          ValueListenableBuilder<bool>(
            valueListenable: _isExpanded,
            builder: (context, isExpanded, child) {
              return isExpanded
                  ? Icon(
                      Icons.expand_less,
                      color: theme.colorScheme.onSurface,
                    )
                  : Icon(
                      Icons.expand_more,
                      color: theme.colorScheme.onSurface,
                    );
            },
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.eventRecordingEntry.event.name,
                  style: theme.textTheme.headline5?.copyWith(
                    color: theme.colorScheme.onSurface,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'held: ${Utils.formatDateTime(widget.eventRecordingEntry.event.start)}',
                  style: theme.textTheme.caption,
                ),
                Text(
                  'duration: ${Utils.formatDuration(widget.eventRecordingEntry.event.duration)}',
                  style: theme.textTheme.caption,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
