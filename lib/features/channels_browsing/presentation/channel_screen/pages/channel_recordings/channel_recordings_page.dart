import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:picspeak/core/presentation/injectable/injectable_init.dart';
import 'package:picspeak/core/utils/loading_state/loading_state.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/event_recording_entry/event_recording_entry.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_screen/cubit/channel_cubit.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_screen/cubit/channel_recordings_cubit.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_screen/pages/channel_recordings/channel_recordings_placeholder.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_screen/pages/channel_recordings/channel_recordings_ready.dart';

class ChannelRecordingsPage extends StatelessWidget {
  const ChannelRecordingsPage({
    required this.channelId,
    Key? key,
  }) : super(key: key);

  final String channelId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChannelRecordingsCubit>(
      create: (context) => getIt.get()..startLoading(channelId),
      child: BlocBuilder<ChannelRecordingsCubit, LoadingState<List<EventRecordingEntry>>>(
        builder: (context, state) {
          return state.map(
            loading: (a) => const ChannelRecordingsPlaceholder(),
            ready: (a) => ChannelRecordingsReady(
              recordings: a.data,
            ),
            failed: (a) => const ChannelRecordingsPlaceholder(),
            waitingForConnection: (a) => const ChannelRecordingsPlaceholder(),
          );
        },
      ),
    );
  }
}
