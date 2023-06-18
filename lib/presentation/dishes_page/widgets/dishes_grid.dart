import 'package:flutter/cupertino.dart';

import '../../../domain/dish/models/dish.dart';
import 'dish_tile.dart';

class DishesGrid extends StatelessWidget {
  const DishesGrid({
    required this.dishes,
    required this.onPressed,
  });

  final List<Dish> dishes;
  final void Function(int index) onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 14,
          crossAxisSpacing: 8,
          childAspectRatio: 109 / 150,
        ),
        itemCount: dishes.length,
        itemBuilder: (context, index) => DishTile(
          index: index,
          onPressed: () => onPressed(index),
          dish: dishes[index],
        ),
      ),
    );
  }
}
