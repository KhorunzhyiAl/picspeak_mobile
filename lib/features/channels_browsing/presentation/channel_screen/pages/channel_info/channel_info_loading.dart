import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picspeak/core/utils/widgets/loading_placeholder.dart';

class ChannelInfoLoading extends StatelessWidget {
  const ChannelInfoLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          LoadingPlaceholder(
            height: 40,
            width: 150,
            color: theme.colorScheme.surface,
          ),
          LoadingPlaceholder(
            height: 150,
            color: theme.colorScheme.surface,
          ),
        ],
      ),
    );
  }
}
