import 'package:flutter/cupertino.dart';
import 'package:picspeak/features/channel_view/presentation/widgets/broadcast_widget.dart';
import 'package:picspeak/features/channel_view/presentation/widgets/channel_header_widget.dart';
import 'package:picspeak/features/channel_view/presentation/widgets/channel_schedule_widget.dart';

class ChannelHomePage extends StatelessWidget {
  const ChannelHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const <Widget>[
          ChannelHeaderWidget(),
          SizedBox(height: 10),
          BroadcastWidget(),
          SizedBox(height: 15),
          ChannelScheduleWidget(),
        ],
      ),
    );
  }
}
