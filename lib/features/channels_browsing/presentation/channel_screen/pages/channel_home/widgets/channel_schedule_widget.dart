import 'package:flutter/material.dart';
import 'package:picspeak/features/shared/domain/entities/channel/channel.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_screen/pages/channel_home/widgets/schedule_entry_widget.dart';

class ChannelScheduleWidget extends StatelessWidget {
  const ChannelScheduleWidget({
    required this.channel,
    Key? key,
  }) : super(key: key);

  final Channel channel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Schedule',
          style: theme.textTheme.headline1?.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
        const SizedBox(height: 10),
        Column(
          children: [
            for (final event in channel.events) ...[
              ScheduleEntryWidget(event: event),
              const SizedBox(height: 20),
            ]
          ],
        ),
      ],
    );
  }
}
