import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/dish/models/dish.dart';
import '../../cart_tab/cubit/cart_cubit.dart';
import '../../shared/custico_icons.dart';
import '../../shared/extensions.dart';
import '../../shared/styles.dart';
import 'icon_button.dart';

class DishDialog extends StatelessWidget {
  const DishDialog(this.dish);

  final Dish dish;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.all(16),
          decoration: const ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            color: CupertinoColors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 311 / 232,
                    child: Container(
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        color: Styles.colorBackground,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 14,
                      ),
                      child: Image.network(dish.imageUrl),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Row(
                      children: [
                        const IconButton(icon: Custico.like),
                        const SizedBox(width: 8),
                        IconButton(
                          icon: Custico.cross,
                          onPressed: context.popRoute,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(dish.name, style: Styles.textBold16),
              const SizedBox(height: 8),
              RichText(
                text: TextSpan(
                  text: context.intl.price(dish.price.truncate()),
                  style: Styles.textRegularBlack,
                  children: [
                    TextSpan(
                      text: ' · ${context.intl.weight(dish.weight.truncate())}',
                      style: Styles.textSubtitleWithAlpha(66),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 8),
              ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 170),
                child: SingleChildScrollView(
                  child: Text(
                    dish.description,
                    style: Styles.textSubtitleWithAlpha(65),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              CupertinoButton(
                onPressed: () {
                  context.read<CartCubit>().addDish(dish);
                  context.popRoute();
                },
                color: Styles.colorPrimary,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Text(context.intl.addToCart),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
