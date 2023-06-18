import 'package:flutter/cupertino.dart';

import '../../../domain/dish/models/dish.dart';
import '../../shared/styles.dart';

class DishTile extends StatelessWidget {
  const DishTile({
    required this.index,
    required this.dish,
    required this.onPressed,
  });

  final void Function() onPressed;
  final Dish dish;
  final int index;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                color: Styles.colorBackground,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 9,
              ),
              child: Image.network(dish.imageUrl),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            dish.name,
            style: Styles.textRegular.copyWith(color: CupertinoColors.black),
          ),
        ],
      ),
    );
  }
}
