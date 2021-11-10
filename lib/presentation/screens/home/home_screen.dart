import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picspeak/domain/app/app.dart';
import 'package:picspeak/domain/app/app_state/app_state.dart';
import 'package:picspeak/domain/data/channel.dart';
import 'package:picspeak/domain/models/channel_map_model.dart';
import 'package:picspeak/presentation/screens/home/widgets/animated_text_switch.dart';
import 'package:picspeak/presentation/screens/channel/channel_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nav = Navigator.of(context);

    return Consumer<App>(builder: (context, app, _) {
      final channelMap = app.state.value.getAppData().channelMap;
      final channelMapModel = ChannelMapModel(channelMap: channelMap, app: app);

      return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          title: ValueListenableBuilder<AppState>(
            valueListenable: app.state,
            builder: (context, state, _) {
              final text = state.maybeMap(
                localDataLoaded: (_) => 'Connecting...',
                authenticated: (_) => 'Picspeak',
                unauthenticated: (_) => 'Picspeak (unregistered)',
                orElse: () => '',
              );
              return AnimatedTextSwitch(
                text: text,
              );
            },
          ),
          shadowColor: Colors.transparent,
          backgroundColor: Colors.brown.shade200,
          foregroundColor: Colors.black,
        ),
        body: Container(
          color: Colors.grey.shade100,
          child: AnimatedBuilder(
            animation: channelMapModel.channelMap,
            builder: (context, _) {
              final list = channelMapModel.asList;
              return ListView.builder(
                itemCount: channelMapModel.channelMap.length,
                itemBuilder: (context, index) {
                  return _buildListEntry(context, list[index], nav);
                },
              );
            },
          ),
        ),
      );
    });
  }

  Widget _buildListEntry(BuildContext context, Channel channel, NavigatorState nav) {
    return SizedBox(
      height: 75,
      child: Card(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        clipBehavior: Clip.hardEdge,
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Text(
                channel.name,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Material(
              type: MaterialType.transparency,
              child: InkWell(
                onTap: () {
                  nav.push(MaterialPageRoute(
                    builder: (context) {
                      return ChannelScreen(channelId: channel.id);
                    },
                  ));
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
