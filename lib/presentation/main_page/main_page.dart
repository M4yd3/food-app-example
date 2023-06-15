import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import '../shared/custico_icons.dart';
import '../shared/extensions.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AutoTabsRouter(
        routes: const [],
        builder: (context, child) => CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: [
              BottomNavigationBarItem(
                icon: const Icon(Custico.home),
                label: context.intl.home,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Custico.search),
                label: context.intl.search,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Custico.cart),
                label: context.intl.cart,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Custico.user),
                label: context.intl.account,
              ),
            ],
            height: 60,
            backgroundColor: CupertinoColors.white,
          ),
          tabBuilder: (context, index) => child,
        ),
      ),
    );
  }
}
