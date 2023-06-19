// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:test_task/presentation/cart_tab/cart_tab.dart' as _i5;
import 'package:test_task/presentation/dishes_page/dishes_page.dart' as _i3;
import 'package:test_task/presentation/home_tab/home_tab.dart' as _i1;
import 'package:test_task/presentation/main_page/main_page.dart' as _i2;
import 'package:test_task/presentation/shared/empty_route_page.dart' as _i4;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.HomeTab(),
      );
    },
    MainRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.MainPage(),
      );
    },
    DishesRoute.name: (routeData) {
      final args = routeData.argsAs<DishesRouteArgs>();
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.DishesPage(args.categoryName),
      );
    },
    EmptyRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.EmptyRoutePage(),
      );
    },
    CartRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.CartTab(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeTab]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.MainPage]
class MainRoute extends _i6.PageRouteInfo<void> {
  const MainRoute({List<_i6.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DishesPage]
class DishesRoute extends _i6.PageRouteInfo<DishesRouteArgs> {
  DishesRoute({
    required String categoryName,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          DishesRoute.name,
          args: DishesRouteArgs(categoryName: categoryName),
          initialChildren: children,
        );

  static const String name = 'DishesRoute';

  static const _i6.PageInfo<DishesRouteArgs> page =
      _i6.PageInfo<DishesRouteArgs>(name);
}

class DishesRouteArgs {
  const DishesRouteArgs({required this.categoryName});

  final String categoryName;

  @override
  String toString() {
    return 'DishesRouteArgs{categoryName: $categoryName}';
  }
}

/// generated route for
/// [_i4.EmptyRoutePage]
class EmptyRoute extends _i6.PageRouteInfo<void> {
  const EmptyRoute({List<_i6.PageRouteInfo>? children})
      : super(
          EmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmptyRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.CartTab]
class CartRoute extends _i6.PageRouteInfo<void> {
  const CartRoute({List<_i6.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
