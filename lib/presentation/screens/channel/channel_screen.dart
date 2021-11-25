import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:picspeak/domain/app/app.dart';
import 'package:picspeak/domain/models/channel_model.dart';
import 'package:picspeak/domain/utils/loading_state/lorem_ipsum.dart';
import 'package:picspeak/presentation/screens/channel/widgets/broadcast_widget.dart';
import 'package:picspeak/presentation/screens/channel/widgets/presentation_entry_widget.dart';
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
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
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
        color: theme.colorScheme.background,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              forceElevated: true,
              collapsedHeight: 250,
              expandedHeight: 250,
              flexibleSpace: Container(
                color: theme.colorScheme.surface,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Image.network(
                        'https://picsum.photos/1200/200',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  channelModel.channelData.maybeMap(
                                    ready: (a) => a.data.name,
                                    orElse: () => '...',
                                  ),
                                  style: theme.textTheme.headline4?.copyWith(
                                    color: theme.colorScheme.onSurface,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                  height: 40,
                                  width: 170,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      elevation: MaterialStateProperty.all(0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          'Subscribe',
                                          style: theme.textTheme.headline6?.copyWith(
                                            color: theme.colorScheme.onPrimary,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                child: BroadcastWidget(channelModel: channelModel),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
              sliver: SliverGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 6,
                crossAxisSpacing: 6,
                children: <Widget>[
                  _buildBigSquareButton(
                    context,
                    theme,
                    text: 'Presentations',
                    icon: Icons.save_alt,
                    onTap: () {},
                  ),
                  _buildBigSquareButton(
                    context,
                    theme,
                    text: 'Schedule',
                    icon: Icons.schedule,
                    onTap: () {},
                  ),
                  _buildBigSquareButton(
                    context,
                    theme,
                    text: 'Recordings',
                    icon: Icons.record_voice_over_outlined,
                    onTap: () {},
                  ),
                ],
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 8)),
            SliverToBoxAdapter(
              child: Container(
                color: theme.colorScheme.secondaryVariant,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        lorem_ipsum_1,
                        style: theme.textTheme.bodyText1?.copyWith(
                          color: theme.colorScheme.onSecondary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBigSquareButton(
    BuildContext context,
    ThemeData theme, {
    required String text,
    required IconData icon,
    required void Function() onTap,
  }) {
    return Card(
      elevation: 0,
      color: theme.colorScheme.surface,
      margin: const EdgeInsets.all(0),
      child: Stack(
        fit: StackFit.passthrough,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 3,
                  child: Icon(
                    icon,
                    size: 40,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(text, style: theme.textTheme.subtitle1),
                ),
              ],
            ),
          ),
          Material(
            type: MaterialType.transparency,
            child: InkWell(
              onTap: onTap,
            ),
          ),
        ],
      ),
    );
  }
}
