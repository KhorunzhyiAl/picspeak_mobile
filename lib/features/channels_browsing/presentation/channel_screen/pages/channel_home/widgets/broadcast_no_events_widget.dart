import 'package:flutter/material.dart';

class BroadcastNoEventsWidget extends StatelessWidget {
  const BroadcastNoEventsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      color: theme.colorScheme.surface,
      margin: EdgeInsets.zero,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Text(
          "This channel daesn't have any events planned",
          style: theme.textTheme.headline2?.copyWith(
            color: theme.colorScheme.onSurface,
          ),
        ),
      ),
    );
  }
}
