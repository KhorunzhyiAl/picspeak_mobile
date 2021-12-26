import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picspeak/core/utils/utils.dart';
import 'package:picspeak/features/shared/domain/entities/channel/channel.dart';

class BroadcastUpcomingWidget extends StatelessWidget {
  const BroadcastUpcomingWidget({
    required this.channel,
    Key? key,
  }) : super(key: key);

  final Channel channel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final event = channel.events.first;
    return Card(
      color: theme.colorScheme.surface,
      margin: EdgeInsets.zero,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.watch_later_outlined,
                  color: Colors.blue,
                ),
                Text(
                  'Upcoming',
                  style: theme.textTheme.headline6?.copyWith(
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              ],
            ),
            Text(
              event.name,
              style: theme.textTheme.headline2?.copyWith(
                color: theme.colorScheme.onSurface,
              ),
            ),
            Text(
              Utils.formatDateTime(event.start),
              style: theme.textTheme.caption?.copyWith(
                color: theme.colorScheme.onSurface,
              ),
            ),
            Text(
              Utils.formatDuration(event.duration),
              style: theme.textTheme.caption?.copyWith(
                color: theme.colorScheme.onSurface,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
