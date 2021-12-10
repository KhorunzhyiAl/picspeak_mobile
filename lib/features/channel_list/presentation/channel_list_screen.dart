import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:picspeak/features/channel_list/presentation/cubit/channel_list_cubit.dart';
import 'package:picspeak/features/channel_list/presentation/cubit/channel_list_state.dart';
import 'package:picspeak/features/channel_list/presentation/widgets/animated_text_switch.dart';
import 'package:picspeak/features/channel_list/presentation/widgets/channel_entry_widget.dart';
import 'package:picspeak/features/load_app/presentation/blocs/app_state_cubit.dart';
import 'package:picspeak/features/load_app/domain/entities/entities.dart';

class ChannelListScreen extends StatelessWidget {
  const ChannelListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
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
              onPressed: () {},
            ),
            title: BlocBuilder<AppLoadingCubit, LoadAppState>(
              builder: (context, state) {
                final text = state.map(
                  initial: (a) => 'Loading...',
                  localDataLoaded: (a) => 'Connecting...',
                  authenticated: (a) => 'Picspeak',
                  unauthenticated: (a) => 'Picspeak (guest)',
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
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            sliver: BlocBuilder<ChannelListCubit, ChannelListState>(
              builder: (context, state) {
                final channels = state.map(
                  initial: (a) => [],
                  loading: (a) => a.cachedList,
                  failure: (a) => [],
                  ready: (a) => a.list,
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
        ],
      ),
    );
  }
}
