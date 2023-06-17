import 'package:flutter/cupertino.dart';

import '../../../../domain/category/models/category.dart';
import '../../shared/styles.dart';


class CategoryCard extends StatelessWidget {
  const CategoryCard({required this.category, required this.onPressed});

  final Category category;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
      onPressed: onPressed,
      child: Stack(
        children: [
          Image.network(
            category.imageUrl,
            height: 148,
          ),
          Positioned(
            top: 12,
            left: 16,
            width: 200,
            child: Text(
              category.name,
              style: Styles.textBold20.copyWith(color: CupertinoColors.black),
            ),
          ),
        ],
      ),
    );
  }
}
