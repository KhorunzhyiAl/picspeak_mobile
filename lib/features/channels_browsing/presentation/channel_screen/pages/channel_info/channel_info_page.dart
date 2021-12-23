import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:picspeak/core/utils/loading_state/loading_state.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/channel/channel.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_screen/cubit/channel_cubit.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_screen/pages/channel_info/channel_info_loading.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_screen/pages/channel_info/channel_info_ready.dart';

class ChannelInfoPage extends StatelessWidget {
  const ChannelInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<ChannelCubit, LoadingState<Channel>>(
      builder: (context, state) {
        return state.map(
          loading: (a) => const ChannelInfoLoading(),
          ready: (a) => ChannelInfoReady(channel: a.data),
          failed: (a) => const ChannelInfoLoading(),
          waitingForConnection: (a) => const ChannelInfoLoading(),
        );
      },
    );
  }
}
