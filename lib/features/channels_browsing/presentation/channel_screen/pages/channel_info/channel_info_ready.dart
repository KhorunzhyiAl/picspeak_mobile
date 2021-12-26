import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picspeak/features/shared/domain/entities/channel/channel.dart';

class ChannelInfoReady extends StatelessWidget {
  const ChannelInfoReady({
    required this.channel,
    Key? key,
  }) : super(key: key);

  final Channel channel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: theme.textTheme.headline1?.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            channel.description,
            style: theme.textTheme.bodyText1?.copyWith(
              color: theme.colorScheme.onBackground,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Members',
            style: theme.textTheme.headline1?.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Icon(
                  Icons.add,
                  color: theme.colorScheme.primary,
                ),
                const SizedBox(width: 15),
                Text(
                  'Request membership',
                  style: theme.textTheme.headline6?.copyWith(
                    color: theme.colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          for (int i = 0; i < channel.members.length; ++i) ...[
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: theme.colorScheme.onBackground.withOpacity(0.2),
                ),
                const SizedBox(width: 15),
                Text(
                  channel.members[i].username,
                  style: theme.textTheme.headline5?.copyWith(
                    color: theme.colorScheme.onBackground,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ],
      ),
    );
  }
}
