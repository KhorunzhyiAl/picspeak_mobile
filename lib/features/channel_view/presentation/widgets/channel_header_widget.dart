import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:picspeak/core/domain/entities/channel.dart';
import 'package:picspeak/core/utils/loading_state/loading_state.dart';
import 'package:picspeak/features/channel_view/presentation/cubit/channel_cubit.dart';

class ChannelHeaderWidget extends StatelessWidget {
  const ChannelHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChannelCubit, LoadingState<Channel>>(
      builder: (context, state) {
        return state.map(
          loading: (a) => a.cached.fold(
            () => _build(context),
            (a) => _build(context, a),
          ),
          ready: (a) => _build(context, a.data),
          failed: (_) => _build(context),
          waitingForConnection: (a) => a.cached.fold(
            () => _build(context),
            (a) => _build(context, a),
          ),
        );
      },
    );
  }

  Widget _build(BuildContext context, [Channel? channel]) {
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
          Positioned.fill(
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
          ),
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.black, Colors.transparent],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (channel == null) ...[
                    Container(
                      height: 22,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      height: 22,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ] else ...[
                    Text(
                      channel.name,
                      style: theme.textTheme.headline2?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ]
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
