import 'package:injectable/injectable.dart';

import '../../domain/dish/dish_repository.dart';
import '../../domain/dish/models/dish.dart';
import '../datasource/rest_api_client.dart';

@Singleton(as: DishRepository)
class DishRepositoryImpl implements DishRepository {
  DishRepositoryImpl(this._api);

  final RestApiClient _api;

  List<String>? _categories;
  List<Dish>? _dishes;

  Future<void> _loadData() async {
    final dishes = await _api.getDishes().then((value) => value.toDomain());

    _dishes = dishes;
    _categories = dishes.fold(
      <String>{},
      (tags, dish) => tags..addAll(dish.tags),
    ).toList();
  }

  @override
  Future<List<String>> getTags() async {
    if (_categories != null) return Future.value(_categories);

    await _loadData();

    return _categories ?? [];
  }

  @override
  Future<List<Dish>> getDishes() async {
    if (_dishes != null) return Future.value(_dishes);

    await _loadData();

    return _dishes ?? [];
  }

  @override
  Future<List<Dish>> getDishesByTag(String tag) async {
    if (_dishes == null) await _loadData();

    return _dishes?.where((dish) => dish.tags.contains(tag)).toList() ?? [];
  }
}
