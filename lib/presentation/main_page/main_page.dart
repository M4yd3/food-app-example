import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/injection.dart';
import '../../config/router.gr.dart';
import '../dishes_page/cubit/dishes_page_cubit.dart';
import '../home_tab/cubit/home_page_cubit.dart';
import '../shared/custico_icons.dart';
import '../shared/extensions.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => getIt<HomePageCubit>()),
          BlocProvider(create: (_) => getIt<DishesPageCubit>()),
        ],
        child: AutoTabsScaffold(
          routes: const [
            HomeRoute(),
            HomeRoute(),
            CartRoute(),
            HomeRoute(),
          ],
          bottomNavigationBuilder: (context, child) => CupertinoTabBar(
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
            currentIndex: context.tabsRouter.activeIndex,
            onTap: context.tabsRouter.setActiveIndex,
          ),
        ),
      ),
    );
  }
}
