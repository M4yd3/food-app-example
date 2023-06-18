// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:test_task/presentation/dishes_page/dishes_page.dart' as _i1;
import 'package:test_task/presentation/home_tab/home_tab.dart' as _i2;
import 'package:test_task/presentation/main_page/main_page.dart' as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    DishesRoute.name: (routeData) {
      final args = routeData.argsAs<DishesRouteArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.DishesPage(args.categoryName),
      );
    },
    HomeRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.HomeTab(),
      );
    },
    MainRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.MainPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.DishesPage]
class DishesRoute extends _i4.PageRouteInfo<DishesRouteArgs> {
  DishesRoute({
    required String? categoryName,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          DishesRoute.name,
          args: DishesRouteArgs(categoryName: categoryName),
          initialChildren: children,
        );

  static const String name = 'DishesRoute';

  static const _i4.PageInfo<DishesRouteArgs> page =
      _i4.PageInfo<DishesRouteArgs>(name);
}

class DishesRouteArgs {
  const DishesRouteArgs({required this.categoryName});

  final String? categoryName;

  @override
  String toString() {
    return 'DishesRouteArgs{categoryName: $categoryName}';
  }
}

/// generated route for
/// [_i2.HomeTab]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MainPage]
class MainRoute extends _i4.PageRouteInfo<void> {
  const MainRoute({List<_i4.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
