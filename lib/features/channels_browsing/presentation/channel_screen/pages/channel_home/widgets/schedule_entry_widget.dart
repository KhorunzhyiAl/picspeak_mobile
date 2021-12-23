import 'package:flutter/material.dart';
import 'package:picspeak/core/presentation/widgets/overlayed_ink_well.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/event/event.dart';
import 'package:picspeak/core/utils/utils.dart';

class ScheduleEntryWidget extends StatelessWidget {
  const ScheduleEntryWidget({Key? key, required this.event}) : super(key: key);

  final Event event;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(5),
      ),
      child: OverlayedInkWell(
        child: _buildContents(theme),
        inkWell: InkWell(
          onTap: () {},
          splashColor: theme.colorScheme.onBackground.withOpacity(0.1),
          overlayColor: MaterialStateProperty.all(
            theme.colorScheme.onBackground.withOpacity(0.1),
          ),
        ),
      ),
    );
  }

  Row _buildContents(ThemeData theme) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTime(theme, event),
          const SizedBox(width: 10),
          _buildName(event, theme),
        ],
      );
  }

  Expanded _buildName(Event event, ThemeData theme) {
    return Expanded(
      child: Text(
        event.name,
        style: theme.textTheme.headline5?.copyWith(
          color: theme.colorScheme.onSurface,
        ),
      ),
    );
  }

  SizedBox _buildTime(ThemeData theme, Event event) {
    return SizedBox(
      height: 40,
      width: 120,
      child: Card(
        margin: EdgeInsets.zero,
        color: theme.colorScheme.surface,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Utils.formatDateTime(event.start),
                style: theme.textTheme.caption?.copyWith(
                  color: theme.colorScheme.onSurface,
                ),
              ),
              Text(
                Utils.formatDuration(event.duration),
                style: theme.textTheme.caption?.copyWith(
                  color: theme.colorScheme.onSurface,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
