import 'package:flutter/cupertino.dart';
import 'package:picspeak/features/shared/domain/entities/channel/channel.dart';
import 'package:picspeak/features/shared/domain/entities/event/event.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_screen/pages/channel_home/widgets/broadcast_active_widget.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_screen/pages/channel_home/widgets/broadcast_no_events_widget.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_screen/pages/channel_home/widgets/broadcast_upcoming_widget.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_screen/pages/channel_home/widgets/channel_header_widget.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_screen/pages/channel_home/widgets/channel_schedule_widget.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_screen/widgets/continuous_refresh.dart';

class ChannelHomePageReady extends StatelessWidget {
  const ChannelHomePageReady({
    required this.channel,
    Key? key,
  }) : super(key: key);

  final Channel channel;

  bool _eventHasStarted(Event event) {
    final now = DateTime.now();
    final diff = now.difference(event.start);
    return !diff.isNegative && diff.compareTo(event.duration) < 0;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ChannelHeaderWidget(
            channel: channel,
          ),
          const SizedBox(height: 10),
          ContinuousRefreshBuilder(
            builder: (context) {
              if (channel.events.isNotEmpty) {
                final event = channel.events.first;
                if (_eventHasStarted(event)) {
                  return BroadcastActiveWidget(channel: channel);
                } else {
                  return BroadcastUpcomingWidget(channel: channel);
                }
              } else {
                return const BroadcastNoEventsWidget();
              }
            },
          ),
          const SizedBox(height: 15),
          ChannelScheduleWidget(
            channel: channel,
          ),
        ],
      ),
    );
  }
}
