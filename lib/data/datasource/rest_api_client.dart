import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import 'models/category_dto.dart';
import 'models/dish_dto.dart';

part 'rest_api_client.g.dart';

@singleton
@RestApi(baseUrl: 'https://run.mocky.io/v3/')
abstract class RestApiClient {
  @factoryMethod
  factory RestApiClient(Dio dio) = _RestApiClient;

  @GET('058729bd-1402-4578-88de-265481fd7d54')
  Future<CategoriesDto> getCategories();

  @GET('aba7ecaa-0a70-453b-b62d-0e326c859b3b')
  Future<DishesDto> getDishes();
}
