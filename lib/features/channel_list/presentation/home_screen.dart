import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:picspeak/core/domain/entities/entities.dart';
import 'package:picspeak/core/presentation/blocs/cubit/app_loading_cubit.dart';
import 'package:picspeak/core/presentation/routes.dart';
import 'package:picspeak/core/utils/failure.dart';
import 'package:picspeak/features/channel_list/presentation/cubit/channel_list_cubit.dart';
import 'package:picspeak/features/channel_list/presentation/cubit/channel_list_state.dart';
import 'package:picspeak/features/channel_list/presentation/widgets/animated_text_switch.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nav = Navigator.of(context);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.primary,
        foregroundColor: theme.colorScheme.onPrimary,
        shadowColor: theme.shadowColor,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        title: BlocBuilder<AppLoadingCubit, AppLoadingState>(
          builder: (context, value) {
            final text = value.map(
              initial: (_) => 'Loading...',
              localDataLoaded: (_) => 'Connecting...',
              authenticated: (_) => 'Picspeak',
              unauthenticated: (_) => 'Guest mode',
            );

            return AnimatedTextSwitch(
              text: text,
            );
          },
        ),
      ),
      body: Container(
        color: theme.colorScheme.background,
        child: BlocBuilder<ChannelListCubit, ChannelListState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => const SizedBox.shrink(),
              loading: (a) => _buildList(context, a.cachedList),
              failure: (a) => _buildFailure(context, a.failure),
              ready: (a) => _buildList(context, a.list),
            );
          },
        ),
      ),
    );
  }

  Widget _buildFailure(BuildContext context, Failure failure) {
    return Center(
      child: Text(failure.message),
    );
  }

  Widget _buildList(BuildContext context, List<Channel> list) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return _buildListEntry(context, list[index]);
      },
    );
  }

  Widget _buildListEntry(BuildContext context, Channel channel) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 75,
      child: Card(
        color: theme.colorScheme.surface,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        clipBehavior: Clip.hardEdge,
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            Row(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Image.network('https://picsum.photos/200'),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        channel.name,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Next event: Nov. 25',
                        style: TextStyle(
                          color: theme.colorScheme.onSurface.withOpacity(0.8),
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Material(
              type: MaterialType.transparency,
              child: InkWell(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(Routes.channel, arguments: {'channelId': channel.id});
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _openDrawer() {}
}
