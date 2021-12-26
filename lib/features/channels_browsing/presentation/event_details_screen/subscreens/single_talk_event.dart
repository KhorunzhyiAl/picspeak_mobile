import 'package:flutter/material.dart';
import 'package:picspeak/features/shared/domain/entities/event/event.dart';
import 'package:picspeak/features/shared/domain/entities/talk/talk.dart';
import 'package:picspeak/features/channels_browsing/presentation/event_details_screen/widgets/dashed_line_widget.dart';
import 'package:picspeak/features/channels_browsing/presentation/event_details_screen/widgets/event_time_data_widget.dart';

class SingleTalkEvent extends StatelessWidget {
  const SingleTalkEvent({
    required this.event,
    Key? key,
  }) : super(key: key);

  final Event event;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          event.name,
          style: theme.textTheme.headline2?.copyWith(
            color: theme.colorScheme.onSurface,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Single talk',
          style: theme.textTheme.headline4?.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
        const SizedBox(height: 10),
        EventTimeDataWidget(
          event: event,
        ),
        const SizedBox(height: 10),
        Text(
          event.description,
          style: theme.textTheme.bodyText1?.copyWith(
            color: theme.colorScheme.onBackground,
          ),
        ),
        const SizedBox(height: 10),
        DashedLineWidget(color: theme.colorScheme.primary),
        const SizedBox(height: 10),
        if (event.talks.isNotEmpty) _buildTalkData(theme),
      ],
    );
  }

  Column _buildTalkData(ThemeData theme) {
    final talk = event.talks.first;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildAuthorData(theme, talk),
        const SizedBox(height: 10),
        _buildDownloadButton(theme),
      ],
    );
  }

  Row _buildAuthorData(ThemeData theme, Talk talk) {
    return Row(
      children: [
        Icon(
          Icons.person,
          color: theme.colorScheme.primary,
        ),
        const SizedBox(width: 10),
        Text(
          talk.speakerUsername,
          style: theme.textTheme.headline5?.copyWith(
            color: theme.colorScheme.onBackground,
          ),
        ),
      ],
    );
  }

  GestureDetector _buildDownloadButton(ThemeData theme) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          Icon(
            Icons.download,
            color: theme.colorScheme.primary,
          ),
          const SizedBox(width: 10),
          // TODO: implement the downloading
          Text(
            'Tap to download slides',
            style: theme.textTheme.headline4?.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
