import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picspeak/core/utils/utils.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/channel/channel.dart';

class BroadcastActiveWidget extends StatelessWidget {
  const BroadcastActiveWidget({
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
                  Icons.stream,
                  color: Colors.red,
                ),
                const SizedBox(width: 5),
                Text(
                  'Currently broadcasting',
                  style: theme.textTheme.headline6?.copyWith(
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              event.name,
              style: theme.textTheme.headline2?.copyWith(
                color: theme.colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Started: ${Utils.formatDateTime(event.start)}',
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
