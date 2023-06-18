import 'package:flutter/cupertino.dart';

import '../../shared/styles.dart';

class TagChip extends StatelessWidget {
  const TagChip({
    required this.tag,
    required this.isActive,
    required this.onPressed,
  });

  final String tag;
  final bool isActive;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: CupertinoButton(
        onPressed: onPressed,
        color: isActive ? Styles.colorPrimary : Styles.colorBackground,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 16,
        ),
        child: Text(
          tag,
          style: Styles.textRegular.copyWith(
            color: isActive ? CupertinoColors.white : CupertinoColors.black,
          ),
        ),
      ),
    );
  }
}
