// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:test_task/config/injection.dart' as _i12;
import 'package:test_task/config/router.dart' as _i3;
import 'package:test_task/data/category/category_repository_impl.dart' as _i7;
import 'package:test_task/data/datasource/rest_api_client.dart' as _i5;
import 'package:test_task/data/dish/dish_repository_impl.dart' as _i9;
import 'package:test_task/domain/category/category_repository.dart' as _i6;
import 'package:test_task/domain/dish/dish_repository.dart' as _i8;
import 'package:test_task/presentation/dishes_page/cubit/dishes_page_cubit.dart'
    as _i10;
import 'package:test_task/presentation/home_tab/cubit/home_page_cubit.dart'
    as _i11;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final externalDependenciesModule = _$ExternalDependenciesModule();
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    gh.factory<_i4.Dio>(() => externalDependenciesModule.dio);
    gh.singleton<_i5.RestApiClient>(_i5.RestApiClient(gh<_i4.Dio>()));
    gh.singleton<_i6.CategoryRepository>(
        _i7.CategoryRepositoryImpl(gh<_i5.RestApiClient>()));
    gh.singleton<_i8.DishRepository>(
        _i9.DishRepositoryImpl(gh<_i5.RestApiClient>()));
    gh.factory<_i10.DishesPageCubit>(
        () => _i10.DishesPageCubit(gh<_i8.DishRepository>()));
    gh.factory<_i11.HomePageCubit>(
        () => _i11.HomePageCubit(gh<_i6.CategoryRepository>()));
    return this;
  }
}

class _$ExternalDependenciesModule extends _i12.ExternalDependenciesModule {}
