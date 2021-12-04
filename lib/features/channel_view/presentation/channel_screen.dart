import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ChannelScreen extends StatefulWidget {
  final String channelId;

  const ChannelScreen({Key? key, required this.channelId}) : super(key: key);

  @override
  State<ChannelScreen> createState() => _ChannelScreenState();
}

class _ChannelScreenState extends State<ChannelScreen> {
  @override
  Widget build(BuildContext context) {
    final nav = Navigator.of(context);
    final theme = Theme.of(context);

    return Container();
  }
}
