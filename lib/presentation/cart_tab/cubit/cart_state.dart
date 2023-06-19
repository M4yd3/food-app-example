part of 'cart_cubit.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({required Map<Dish, int> items}) = _CartState;

  factory CartState.initial() => const CartState(items: {});
}
