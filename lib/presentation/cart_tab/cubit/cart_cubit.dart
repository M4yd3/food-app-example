import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/dish/models/dish.dart';

part 'cart_state.dart';
part 'cart_cubit.freezed.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartState.initial());

  Future<void> addDish(Dish dish) async => emit(
        state.copyWith(
          items: Map.from(state.items)
            ..update(dish, (value) => value + 1, ifAbsent: () => 1),
        ),
      );

  Future<void> removeDish(Dish dish) async => emit(
        state.copyWith(
          items: Map.from(state.items)
            ..update(dish, (value) => value - 1)
            ..removeWhere((key, value) => value <= 0),
        ),
      );

  double get cartSum => state.items.entries.fold(
        0,
        (sum, entry) => sum + entry.key.price * entry.value,
      );
}
