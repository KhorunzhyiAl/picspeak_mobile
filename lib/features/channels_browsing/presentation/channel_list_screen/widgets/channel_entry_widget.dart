import 'package:flutter/material.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/channel/channel.dart';
import 'package:picspeak/core/presentation/routes.dart';
import 'package:picspeak/core/utils/utils.dart';

class ChannelEntryWidget extends StatelessWidget {
  const ChannelEntryWidget({
    Key? key,
    required this.channel,
  }) : super(key: key);

  final Channel channel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.all(0),
      color: theme.colorScheme.surface,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      clipBehavior: Clip.hardEdge,
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 70,
                child: Image.network(
                  'https://picsum.photos/600/200',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      channel.name,
                      style: theme.textTheme.headline4?.copyWith(
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                    if (channel.events.isNotEmpty) ...[
                      const SizedBox(height: 5),
                      Text(
                        channel.events.first.name,
                        style: theme.textTheme.subtitle2?.copyWith(
                          color: theme.colorScheme.onSurface,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        Utils.formatDateTime(channel.events.first.start),
                        style: theme.textTheme.caption?.copyWith(
                          color: theme.colorScheme.onSurface,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
          Positioned.fill(
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(
                    Routes.channel,
                    arguments: {
                      'channelId': channel.channelId,
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
