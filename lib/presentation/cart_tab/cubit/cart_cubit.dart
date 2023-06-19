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
            ..update(dish, (value) => value++, ifAbsent: () => 1),
        ),
      );
}
