import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picspeak/domain/app/app.dart';
import 'package:picspeak/domain/models/channel_model.dart';
import 'package:picspeak/presentation/other/white_noise_widget.dart';
import 'package:picspeak/presentation/screens/boradcast/broadcast_screen.dart';
import 'package:provider/provider.dart';

class BroadcastWidget extends StatelessWidget {
  const BroadcastWidget({Key? key, required this.channelModel}) : super(key: key);

  final ChannelModel channelModel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Consumer<App>(
      builder: (context, app, child) {
        return AnimatedBuilder(
          animation: channelModel,
          builder: (context, child) {
            return SizedBox(
              height: 150,
              child: Card(
                color: theme.colorScheme.surface,
                elevation: 0,
                clipBehavior: Clip.hardEdge,
                margin: const EdgeInsets.all(0),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Row(
                      children: <Widget>[
                        const AspectRatio(
                          aspectRatio: 1,
                          child: WhiteNoise(),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [ 
                                Text(
                                  'Inactive',
                                  style: theme.textTheme.headline5,
                                ),
                                Text(
                                  'Event planned: 9:30 15.17.2021',
                                  style: theme.textTheme.overline,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Material(
                      type: MaterialType.transparency,
                      child: InkWell(
                        onTap: () {
                          app.currentChannel.value = Some(channelModel);
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return const BroadcastScreen();
                          }));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
