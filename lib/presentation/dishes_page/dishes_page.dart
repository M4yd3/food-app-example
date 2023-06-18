import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../shared/styles.dart';
import '../shared/widgets/user_avatar.dart';
import 'cubit/dishes_page_cubit.dart';
import 'widgets/dishes_grid.dart';
import 'widgets/tags_choice.dart';

@RoutePage()
class DishesPage extends StatelessWidget {
  const DishesPage([this.categoryName]);

  final String? categoryName;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 16,
                left: 16,
                right: 16,
                bottom: 8,
              ),
              child: Row(
                children: [
                  const CupertinoNavigationBarBackButton(
                    color: CupertinoColors.black,
                  ),
                  const Spacer(),
                  Text(
                    categoryName ?? '',
                    style: Styles.textBold16,
                  ),
                  const Spacer(),
                  const UserAvatar(),
                ],
              ),
            ),
            Expanded(
              child: BlocBuilder<DishesPageCubit, DishesPageState>(
                builder: (context, state) {
                  if (state is Initial) {
                    context.read<DishesPageCubit>().loadData();
                  }

                  return switch (state) {
                    Loaded(:final tag, :final tags, :final dishes) => Column(
                        children: [
                          TagsChoice(
                            current: tag,
                            tags: tags,
                            onPressed: context.read<DishesPageCubit>().setTag,
                          ),
                          DishesGrid(
                            dishes: dishes,
                            onPressed: (index) {},
                          ),
                        ],
                      ),
                    _ => const Center(child: CupertinoActivityIndicator()),
                  };
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
