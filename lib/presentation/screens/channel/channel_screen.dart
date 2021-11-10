import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:picspeak/domain/app/app.dart';
import 'package:picspeak/domain/app/app_data/app_data.dart';
import 'package:picspeak/domain/data/presentation.dart';
import 'package:picspeak/domain/data/channel.dart';
import 'package:picspeak/domain/models/channel_model.dart';
import 'package:picspeak/domain/utils/loading_state/loading_state.dart';
import 'package:provider/provider.dart';

class ChannelScreen extends StatefulWidget {
  final String channelId;

  const ChannelScreen({Key? key, required this.channelId}) : super(key: key);

  @override
  State<ChannelScreen> createState() => _ChannelScreenState();
}

class _ChannelScreenState extends State<ChannelScreen> {
  late final ChannelModel channelModel;

  @override
  void initState() {
    super.initState();

    final app = Provider.of<App>(context, listen: false);
    channelModel = ChannelModel(channelId: widget.channelId, app: app);
  }

  @override
  void dispose() {
    super.dispose();
    channelModel.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final nav = Navigator.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade200,
        foregroundColor: Colors.black,
        shadowColor: Colors.transparent,
        title: AnimatedBuilder(
          animation: channelModel,
          builder: (context, child) {
            final text = channelModel.channelData.map(
              loading: (a) => 'loading',
              ready: (a) => a.data.name,
              failed: (a) => 'Error',
            );
            return Text(
              text,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            );
          },
        ),
      ),
      body: Container(
        color: Colors.grey.shade200,
        child: CustomScrollView(
          slivers: [
            // ValueListenableBuilder(
            //   valueListenable: room.roomData,
            //   builder: (context, roomData, _) {
            //     return SliverToBoxAdapter(child: SizedBox(
            //       height: roomData.,
            //       child: Card(
            //         color: Colors.white,
            //         elevation: 0,

            //       ),
            //     ));
            //   }
            // ),
            SliverAppBar(
              // collapsedHeight: 35,
              toolbarHeight: 35,
              automaticallyImplyLeading: false,
              backgroundColor: Colors.brown.shade200,
              foregroundColor: Colors.black,
              shadowColor: Colors.transparent,
              title: const Text(
                'Saved presentations (надо лучше название)',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            AnimatedBuilder(
              animation: channelModel,
              builder: (context, child) {
                return channelModel.channelData.map(
                  loading: (a) {
                    return const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 200,
                        child: Center(child: Text('Loading...')),
                      ),
                    );
                  },
                  ready: (a) {
                    return SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          return _buildPresentationEntry(
                            context: context,
                            presentation: a.data.presentations[index],
                            nav: nav,
                          );
                        },
                        childCount: a.data.presentations.length,
                      ),
                    );
                  },
                  failed: (a) {
                    return SliverToBoxAdapter(
                      child: SizedBox(
                        height: 200,
                        child: Center(
                          child: Text(a.message),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPresentationEntry({
    required BuildContext context,
    required Presentation presentation,
    required NavigatorState nav,
  }) {
    return SizedBox(
      height: 100,
      child: Card(
        color: Colors.white,
        elevation: 0,
        clipBehavior: Clip.hardEdge,
        child: Stack(
          children: [
            Row(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Image.network(
                    'https://picsum.photos/300/200',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            presentation.title,
                            style: const TextStyle(
                              color: Colors.black87,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Slides: ${presentation.slides.length}',
                            style: const TextStyle(
                              color: Colors.black54,
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
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
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
