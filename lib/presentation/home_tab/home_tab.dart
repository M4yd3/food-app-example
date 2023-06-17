import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../shared/widgets/info_app_bar.dart';
import 'cubit/home_page_cubit.dart';
import 'widgets/category_card.dart';

@RoutePage()
class HomeTab extends StatelessWidget {
  const HomeTab();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        children: [
          const InfoAppBar(),
          Expanded(
            child: BlocBuilder<HomePageCubit, HomePageState>(
              builder: (context, state) {
                if (state is Initial) {
                  context.read<HomePageCubit>().loadCategories();
                }
                return switch (state) {
                  Loaded(:final categories) => ListView.builder(
                      itemCount: categories.length,
                      itemBuilder: (context, index) => CategoryCard(
                        category: categories[index],
                        onPressed: () {},
                      ),
                    ),
                  _ => const Center(child: CupertinoActivityIndicator()),
                };
              },
            ),
          ),
        ],
      ),
    );
  }
}
