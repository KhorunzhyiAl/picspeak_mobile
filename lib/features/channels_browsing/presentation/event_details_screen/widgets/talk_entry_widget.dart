import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picspeak/core/presentation/widgets/my_card.dart';
import 'package:picspeak/core/presentation/widgets/overlayed_ink_well.dart';
import 'package:picspeak/core/utils/utils.dart';
import 'package:picspeak/features/shared/domain/entities/talk/talk.dart';

class TalkEntryWidget extends StatelessWidget {
  const TalkEntryWidget({
    required this.talk,
    Key? key,
  }) : super(key: key);

  final Talk talk;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.transparent,
      ),
      clipBehavior: Clip.hardEdge,
      child: OverlayedInkWell(
        inkWell: InkWell(
          overlayColor: MaterialStateProperty.all(theme.colorScheme.background.withOpacity(0.3)),
          highlightColor: theme.colorScheme.onBackground.withOpacity(0.05),
          onTap: () {},
        ),
        child: _buildContents(theme),
      ),
    );
  }

  Row _buildContents(ThemeData theme) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTimeData(theme),
        const SizedBox(width: 10),
        _buildMainInfo(theme),
      ],
    );
  }

  Expanded _buildMainInfo(ThemeData theme) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            talk.name,
            style: theme.textTheme.headline5?.copyWith(
              color: theme.colorScheme.onBackground,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            talk.speakerUsername,
            style: theme.textTheme.subtitle2?.copyWith(
              color: theme.colorScheme.onBackground.withOpacity(0.7),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeData(ThemeData theme) {
    return Column(
      children: [
        MyCard(
          width: 70,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                Utils.formatDuration(talk.duration),
                style: theme.textTheme.caption?.copyWith(
                  color: theme.colorScheme.onSurface,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        if (talk.slidesAreAvailable) _buildSlidesAreAvailableMark(theme),
      ],
    );
  }

  Row _buildSlidesAreAvailableMark(ThemeData theme) {
    return Row(
      children: [
        Icon(
          Icons.filter_none_outlined,
          color: theme.colorScheme.primary,
          size: 15,
        ),
        const SizedBox(width: 5),
        Text(
          'Slides',
          style: theme.textTheme.caption?.copyWith(
            color: theme.colorScheme.primary,
          ),
        )
      ],
    );
  }
}
