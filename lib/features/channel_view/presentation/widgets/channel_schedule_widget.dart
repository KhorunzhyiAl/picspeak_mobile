import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:picspeak/core/domain/entities/channel.dart';
import 'package:picspeak/core/utils/loading_state/loading_state.dart';
import 'package:picspeak/features/channel_view/presentation/cubit/channel_cubit.dart';
import 'package:picspeak/features/channel_view/presentation/widgets/schedule_entry_widget.dart';

class ChannelScheduleWidget extends StatelessWidget {
  const ChannelScheduleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<ChannelCubit, LoadingState<Channel>>(
      builder: (context, state) {
        return state.map(
          loading: (a) => a.cached.fold(
            () => _build(context),
            (a) => _build(context, a),
          ),
          ready: (a) => _build(context, a.data),
          failed: (a) => _build(context),
          waitingForConnection: (a) => a.cached.fold(
            () => _build(context),
            (a) => _build(context, a),
          ),
        );
      },
    );
  }

  Widget _build(BuildContext context, [Channel? channel]) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Schedule',
          style: theme.textTheme.headline1?.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
        const SizedBox(height: 10),
        Column(
          children: [
            if (channel != null) ...[
              for (final event in channel.events) ...[
                ScheduleEntryWidget(event: event),
                const SizedBox(height: 20),
              ]
            ] else ...[
              for (int i = 0; i < 4; ++i) ...[
                const ScheduleEntryWidget(),
                const SizedBox(height: 20),
              ]
            ],
          ],
        ),
      ],
    );
  }
}
