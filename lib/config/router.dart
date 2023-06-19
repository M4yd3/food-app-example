import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import 'router.gr.dart';

@singleton
@AutoRouterConfig(replaceInRouteName: 'Page|Screen|Tab,Route')
class AppRouter extends $AppRouter {
  AppRouter();

  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      page: MainRoute.page,
      path: '/',
      children: [
        AutoRoute(
          page: EmptyRoute.page,
          path: 'home',
          children: [
            AutoRoute(page: HomeRoute.page, path: ''),
            AutoRoute(page: DishesRoute.page, path: 'dishes'),
          ],
        ),
        AutoRoute(page: CartRoute.page, path: 'cart'),
      ],
    ),
  ];
}
