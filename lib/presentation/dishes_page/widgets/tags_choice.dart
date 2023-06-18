import 'package:flutter/cupertino.dart';

import 'tag_chip.dart';

class TagsChoice extends StatelessWidget {
  const TagsChoice({
    required this.current,
    required this.tags,
    required this.onPressed,
  });

  final List<String> tags;
  final String current;
  final void Function(String value) onPressed;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          const SizedBox(width: 16),
          ...tags.map(
            (tag) {
              final isActive = tag == current;

              return TagChip(
                tag: tag,
                isActive: isActive,
                onPressed: () {
                  if (isActive) return;
                  onPressed(tag);
                },
              );
            },
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}
