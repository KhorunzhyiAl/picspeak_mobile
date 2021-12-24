import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picspeak/core/presentation/widgets/my_card.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/talk/talk.dart';

class TalkEntryWidget extends StatelessWidget {
  const TalkEntryWidget({
    required this.talk,
    Key? key,
  }) : super(key: key);

  final Talk talk;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
