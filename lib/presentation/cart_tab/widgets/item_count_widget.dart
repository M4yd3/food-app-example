import 'package:flutter/cupertino.dart';

import '../../shared/custico_icons.dart';
import '../../shared/styles.dart';

class ItemCountButtons extends StatelessWidget {
  const ItemCountButtons({
    required this.count,
    required this.onRemove,
    required this.onAdd,
  });

  final int count;
  final void Function() onRemove;
  final void Function() onAdd;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Styles.colorCartButtons,
      ),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
      child: Row(
        children: [
          GestureDetector(
            onTap: onRemove,
            child: const Icon(
              Custico.remove,
              size: 24,
              color: CupertinoColors.black,
            ),
          ),
          const SizedBox(width: 16),
          Text('$count', style: Styles.textBold),
          const SizedBox(width: 16),
          GestureDetector(
            onTap: onAdd,
            child: const Icon(
              Custico.add,
              size: 24,
              color: CupertinoColors.black,
            ),
          )
        ],
      ),
    );
  }
}
