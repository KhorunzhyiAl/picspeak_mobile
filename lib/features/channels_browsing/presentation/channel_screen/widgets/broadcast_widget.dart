import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/channel.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/event.dart';
import 'package:picspeak/core/utils/loading_state/loading_state.dart';
import 'package:picspeak/core/utils/utils.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_screen/cubit/channel_cubit.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_screen/widgets/continuous_refresh.dart';

class BroadcastWidget extends StatefulWidget {
  const BroadcastWidget({Key? key}) : super(key: key);

  @override
  State<BroadcastWidget> createState() => _BroadcastWidgetState();
}

// The reason for not using *Single*TickerProvider... is because it throws errors when hot reloading
class _BroadcastWidgetState extends State<BroadcastWidget> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChannelCubit, LoadingState<Channel>>(
      builder: (context, state) {
        return state.map(
          loading: (_) => _buildPlaceholder(context),
          ready: (a) => _build(context, a.data),
          failed: (_) => _buildPlaceholder(context),
          waitingForConnection: (a) => a.cached.fold(
            () => _buildPlaceholder(context),
            (a) => _build(context, a),
          ),
        );
      },
    );
  }

  Widget _build(BuildContext context, Channel channel) {
    return ContinuousRefreshBuilder(
      builder: (context) {
        if (channel.events.isNotEmpty) {
          final event = channel.events.first;
          if (_eventHasStarted(event)) {
            return _buildCurrentlyBoadcasting(context, channel);
          } else {
            return _buildUpcoming(context, channel);
          }
        } else {
          return _buildNoEvents(context);
        }
      },
    );
  }

  bool _eventHasStarted(Event event) {
    final now = DateTime.now();
    final diff = now.difference(event.start);
    return !diff.isNegative && diff.compareTo(event.duration) < 0;
  }

  Widget _buildCurrentlyBoadcasting(BuildContext context, Channel channel) {
    final theme = Theme.of(context);
    final event = channel.events.first;
    return Card(
      color: theme.colorScheme.surface,
      margin: EdgeInsets.zero,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.stream,
                  color: Colors.red,
                ),
                const SizedBox(width: 5),
                Text(
                  'Currently broadcasting',
                  style: theme.textTheme.headline6?.copyWith(
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              event.name,
              style: theme.textTheme.headline2?.copyWith(
                color: theme.colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Started: ${Utils.formatDateTime(event.start)}',
              style: theme.textTheme.caption?.copyWith(
                color: theme.colorScheme.onSurface,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUpcoming(BuildContext context, Channel channel) {
    final theme = Theme.of(context);
    final event = channel.events.first;
    return Card(
      color: theme.colorScheme.surface,
      margin: EdgeInsets.zero,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.watch_later_outlined,
                  color: Colors.blue,
                ),
                Text(
                  'Upcoming',
                  style: theme.textTheme.headline6?.copyWith(
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              ],
            ),
            Text(
              event.name,
              style: theme.textTheme.headline2?.copyWith(
                color: theme.colorScheme.onSurface,
              ),
            ),
            Text(
              Utils.formatDateTime(event.start),
              style: theme.textTheme.caption?.copyWith(
                color: theme.colorScheme.onSurface,
              ),
            ),
            Text(
              Utils.formatDuration(event.duration),
              style: theme.textTheme.caption?.copyWith(
                color: theme.colorScheme.onSurface,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlaceholder(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      color: theme.colorScheme.surface,
      margin: EdgeInsets.zero,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Container(
                  height: 16,
                  width: 16,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: theme.colorScheme.onSurface.withOpacity(0.3),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 16,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: theme.colorScheme.onSurface.withOpacity(0.3),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              height: 22,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: theme.colorScheme.onSurface.withOpacity(0.3),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 12,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: theme.colorScheme.onSurface.withOpacity(0.3),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 12,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: theme.colorScheme.onSurface.withOpacity(0.3),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNoEvents(BuildContext context) {
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
