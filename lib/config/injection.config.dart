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
import 'package:test_task/config/injection.dart' as _i9;
import 'package:test_task/config/router.dart' as _i3;
import 'package:test_task/data/category/category_repository_impl.dart' as _i7;
import 'package:test_task/data/datasource/rest_api_client.dart' as _i5;
import 'package:test_task/domain/category/category_repository.dart' as _i6;
import 'package:test_task/presentation/home_tab/cubit/home_page_cubit.dart'
    as _i8;

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
    gh.factory<_i8.HomePageCubit>(
        () => _i8.HomePageCubit(gh<_i6.CategoryRepository>()));
    return this;
  }
}

class _$ExternalDependenciesModule extends _i9.ExternalDependenciesModule {}
