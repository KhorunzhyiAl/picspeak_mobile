import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:picspeak/core/utils/loading_state/loading_state.dart';
import 'package:picspeak/features/shared/domain/entities/channel/channel.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_screen/cubit/channel_cubit.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_screen/pages/channel_home/channel_home_page_loading.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_screen/pages/channel_home/channel_home_page_ready.dart';

class ChannelHomePage extends StatelessWidget {
  const ChannelHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocBuilder<ChannelCubit, LoadingState<Channel>>(
        builder: (context, state) {
          return state.map(
            loading: (_) => const ChannelHomePageLoading(),
            ready: (a) => ChannelHomePageReady(channel: a.data),
            failed: (_) => const ChannelHomePageLoading(),
            waitingForConnection: (a) => a.cached.fold(
              () => const ChannelHomePageLoading(),
              (a) => ChannelHomePageReady(channel: a),
            ),
          );
        },
      ),
    );
  }
}
