import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/channel.dart';
import 'package:picspeak/core/utils/loading_state/loading_state.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_list_screen/cubit/channel_list_cubit.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_list_screen/widgets/animated_text_switch.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_list_screen/widgets/channel_entry_widget.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_list_screen/widgets/my_drawer.dart';
import 'package:picspeak/features/load_app/presentation/blocs/app_state_cubit.dart';
import 'package:picspeak/features/load_app/domain/entities/entities.dart';

class ChannelListScreen extends StatelessWidget {
  ChannelListScreen({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      key: _scaffoldKey,
      drawer: const MyDrawer(),
      body: Container(
        color: theme.colorScheme.background,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              elevation: 10,
              toolbarHeight: 50,
              shadowColor: theme.shadowColor,
              backgroundColor: theme.colorScheme.background,
              foregroundColor: theme.colorScheme.primary,
              leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  _scaffoldKey.currentState?.openDrawer();
                },
              ),
              title: BlocBuilder<AppLoadingCubit, AppState>(
                builder: (context, state) {
                  final text = state.map(
                    initial: (a) => 'Loading...',
                    localDataLoaded: (a) => 'Connecting...',
                    authenticated: (a) => 'Picspeak',
                    unauthenticated: (a) => 'Picspeak (guest)',
                    offline: (a) => 'Waiting for connection...',
                  );
                  return AnimatedTextSwitch(
                    text: text,
                    style: theme.textTheme.headline3?.copyWith(
                      color: theme.colorScheme.primary,
                    ),
                  );
                },
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              sliver: BlocBuilder<ChannelListCubit, LoadingState<List<Channel>>>(
                builder: (context, state) {
                  final channels = state.map(
                    loading: (a) => a.cached.fold(
                      () => <Channel>[],
                      (a) => a,
                    ),
                    failed: (a) => <Channel>[],
                    ready: (a) => a.data,
                    waitingForConnection: (a) => a.cached.fold(
                      () => <Channel>[],
                      (a) => a,
                    ),
                  );
                  return SliverList(
                      delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: ChannelEntryWidget(channel: channels[index]),
                      );
                    },
                    childCount: channels.length,
                  ));
                },
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 15)),
          ],
        ),
      ),
    );
  }
}
