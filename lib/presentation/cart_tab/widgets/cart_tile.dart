import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/dish/models/dish.dart';
import '../../shared/styles.dart';
import '../../shared/widgets/dish_specs_widget.dart';
import '../cubit/cart_cubit.dart';
import 'item_count_widget.dart';

class CartTile extends StatelessWidget {
  const CartTile({required this.dish, required this.count});

  final Dish dish;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            color: Styles.colorBackground,
          ),
          height: 62,
          width: 62,
          padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 4),
          child: Image.network(dish.imageUrl),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 115,
              child: Text(dish.name, style: Styles.textBold),
            ),
            const SizedBox(height: 4),
            DishSpecsWidget(dish: dish),
          ],
        ),
        const Spacer(),
        ItemCountButtons(
          count: count,
          onRemove: () => context.read<CartCubit>().removeDish(dish),
          onAdd: () => context.read<CartCubit>().addDish(dish),
        ),
      ],
    );
  }
}
