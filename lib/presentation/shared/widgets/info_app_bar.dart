import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

import '../custico_icons.dart';
import '../extensions.dart';
import '../styles.dart';
import 'user_avatar.dart';

class InfoAppBar extends StatelessWidget {
  const InfoAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Custico.location, color: CupertinoColors.black),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(context.intl.city, style: Styles.textBold16),
              const SizedBox(height: 4),
              Text(
                DateFormat('d MMMM, y', context.intl.localeName)
                    .format(DateTime.now()),
                style:
                    Styles.textSubtitleWithAlpha(80),
              ),
            ],
          ),
          const Spacer(),
          const UserAvatar(),
        ],
      ),
    );
  }
}
