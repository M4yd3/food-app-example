import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import 'router.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  AppRouter();

  @override
  final List<AutoRoute> routes = [];
}
