import 'models/dish.dart';

abstract class DishRepository {
  Future<List<String>> getTags();

  Future<List<Dish>> getDishes();

  Future<List<Dish>> getDishesByTag(String tag);
}
