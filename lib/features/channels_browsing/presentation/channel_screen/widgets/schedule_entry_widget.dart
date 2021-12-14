import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/event.dart';
import 'package:picspeak/core/utils/utils.dart';

class ScheduleEntryWidget extends StatelessWidget {
  const ScheduleEntryWidget({Key? key, this.event}) : super(key: key);

  final Event? event;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final event = this.event;
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
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
                        if (event != null) ...[
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
                        ]
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              if (event != null) ...[
                Expanded(
                  child: Text(
                    event.name,
                    style: theme.textTheme.headline5?.copyWith(
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                ),
              ] else ...[
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onBackground.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ]
            ],
          ),
          Positioned.fill(
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                onTap: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
