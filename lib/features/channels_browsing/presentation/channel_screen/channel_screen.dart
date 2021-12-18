import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_screen/channel_home_page.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_screen/cubit/channel_cubit.dart';

class ChannelScreen extends StatefulWidget {
  const ChannelScreen({
    Key? key,
    required this.channelId,
  }) : super(key: key);

  final String channelId;

  @override
  State<ChannelScreen> createState() => _ChannelScreenState();
}

class _ChannelScreenState extends State<ChannelScreen> with TickerProviderStateMixin {
  late final tabBarController = TabController(length: 3, vsync: this);

  @override
  void initState() {
    super.initState();
    
    final channelCubit = BlocProvider.of<ChannelCubit>(context, listen: false);
    channelCubit.onChannelOpened(widget.channelId);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      color: theme.colorScheme.background,
      child: NestedScrollView(
        headerSliverBuilder: (context, _) {
          return <Widget>[
            SliverAppBar(
              pinned: true,
              elevation: 10,
              toolbarHeight: 50,
              shadowColor: theme.shadowColor,
              backgroundColor: theme.colorScheme.background,
              foregroundColor: theme.colorScheme.primary,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(40),
                child: SizedBox(
                  width: 350,
                  child: TabBar(
                    controller: tabBarController,
                    indicatorSize: TabBarIndicatorSize.label,
                    labelPadding: EdgeInsets.zero,
                    indicatorColor: theme.colorScheme.onBackground,
                    labelColor: theme.colorScheme.onBackground,
                    unselectedLabelColor: theme.colorScheme.onBackground.withOpacity(0.5),
                    labelStyle: theme.textTheme.headline5,
                    tabs: const [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                        child: Tab(
                          text: 'Home',
                          height: 30,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                        child: Tab(
                          text: 'Recordings',
                          height: 30,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                        child: Tab(
                          text: 'About',
                          height: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: tabBarController,
          children: [
            const ChannelHomePage(),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
