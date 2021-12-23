import 'package:flutter/material.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/channel/channel.dart';

class ChannelHeaderWidget extends StatelessWidget {
  const ChannelHeaderWidget({
    required this.channel,
    Key? key,
  }) : super(key: key);

  final Channel channel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      clipBehavior: Clip.hardEdge,
      height: 150,
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          _buildImage(),
          _buildGradient(),
          _buildName(theme),
        ],
      ),
    );
  }

  Positioned _buildName(ThemeData theme) {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Text(
          channel.name,
          style: theme.textTheme.headline2?.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Positioned _buildImage() {
    return Positioned.fill(
      child: Image.network(
        'https://picsum.photos/1000/500',
        fit: BoxFit.cover,
        loadingBuilder: (context, child, chunk) {
          if (chunk?.cumulativeBytesLoaded == chunk?.expectedTotalBytes) {
            return child;
          }
          return Image.asset(
            'assets/images/blue_pattern.jpg',
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }

  Positioned _buildGradient() {
    return Positioned.fill(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [Colors.black, Colors.transparent],
          ),
        ),
      ),
    );
  }
}
