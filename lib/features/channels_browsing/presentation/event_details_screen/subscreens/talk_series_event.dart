import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/event/event.dart';
import 'package:picspeak/features/channels_browsing/presentation/event_details_screen/widgets/dashed_line_widget.dart';
import 'package:picspeak/features/channels_browsing/presentation/event_details_screen/widgets/event_time_data_widget.dart';

class TalkSeriesEvent extends StatelessWidget {
  const TalkSeriesEvent({
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
          'TalkSeries',
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
      ],
    );
  }

  Widget _buildTalkList(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        
      ],
    );
  }
}
