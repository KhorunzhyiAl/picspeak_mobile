import 'package:flutter/material.dart';
import 'package:picspeak/core/utils/widgets/loading_placeholder.dart';

class ChannelHomePageLoading extends StatelessWidget {
  const ChannelHomePageLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          LoadingPlaceholder(
            height: 150,
            color: theme.colorScheme.surface,
          ),
          const SizedBox(height: 10),
          LoadingPlaceholder(
            height: 75,
            color: theme.colorScheme.surface,
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              LoadingPlaceholder(
                height: 40,
                width: 150,
                color: theme.colorScheme.surface,
              ),
            ],
          ),
          const SizedBox(height: 10),
          for (int i = 0; i < 4; ++i) ...[
            Row(
              children: [
                LoadingPlaceholder(
                  height: 40,
                  width: 100,
                  color: theme.colorScheme.surface,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: LoadingPlaceholder(
                    height: 40,
                    color: theme.colorScheme.surface,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
          ]
        ],
      ),
    );
  }
}
