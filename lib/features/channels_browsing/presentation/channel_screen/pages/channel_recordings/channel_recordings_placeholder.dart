import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChannelRecordingsPlaceholder extends StatelessWidget {
  const ChannelRecordingsPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (int i = 0; i < 5; ++i)
          SizedBox(
            height: 100,
            child: Card(
              color: theme.colorScheme.surface,
              elevation: 0,
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
      ],
    );
  }
}
