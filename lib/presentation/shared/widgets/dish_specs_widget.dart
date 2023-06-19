import 'package:flutter/cupertino.dart';

import '../../../domain/dish/models/dish.dart';
import '../extensions.dart';
import '../styles.dart';

class DishSpecsWidget extends StatelessWidget {
  const DishSpecsWidget({required this.dish});

  final Dish dish;

  @override
  Widget build(BuildContext context) {
    return RichText(
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
    );
  }
}
