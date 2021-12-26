import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picspeak/features/shared/domain/entities/event/event.dart';
import 'package:picspeak/features/channels_browsing/presentation/event_details_screen/subscreens/single_talk_event.dart';
import 'package:picspeak/features/channels_browsing/presentation/event_details_screen/subscreens/talk_series_event.dart';

class EventDetailsScreen extends StatelessWidget {
  // Trying a new approach to routing (my own idea, a replacement of onGenerateRoute)
  static Route getRoute(Event event) {
    return CupertinoPageRoute(
      builder: (context) {
        return EventDetailsScreen(event: event);
      },
    );
  }

  const EventDetailsScreen({
    required this.event,
    Key? key,
  }) : super(key: key);

  final Event event;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: theme.colorScheme.background,
        foregroundColor: theme.colorScheme.primary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: event.talks.length > 1
              ? TalkSeriesEvent(event: event)
              : SingleTalkEvent(event: event),
        ),
      ),
    );
  }
}
