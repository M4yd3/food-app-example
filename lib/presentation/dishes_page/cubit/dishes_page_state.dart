part of 'dishes_page_cubit.dart';

@freezed
class DishesPageState with _$DishesPageState {
  const factory DishesPageState.initial() = Initial;
  const factory DishesPageState.loaded({
    required String tag,
    required List<String> tags,
    required List<Dish> dishes,
  }) = Loaded;
}
