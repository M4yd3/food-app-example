import 'package:injectable/injectable.dart';

import '../../domain/category/category_repository.dart';
import '../../domain/category/models/category.dart';
import '../datasource/rest_api_client.dart';

@Singleton(as: CategoryRepository)
class CategoryRepositoryImpl implements CategoryRepository {
  CategoryRepositoryImpl(this._api);

  final RestApiClient _api;

  @override
  Future<List<Category>?> getCategories() async =>
      _api.getCategories().then((value) => value.toDomain());
}
