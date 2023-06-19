import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../shared/extensions.dart';
import '../shared/styles.dart';
import '../shared/widgets/info_app_bar.dart';
import 'cubit/cart_cubit.dart';
import 'widgets/cart_tile.dart';

@RoutePage()
class CartTab extends StatelessWidget {
  const CartTab();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        children: [
          const InfoAppBar(),
          Expanded(
            child: BlocBuilder<CartCubit, CartState>(
              builder: (context, state) => ListView.separated(
                padding: const EdgeInsets.all(16),
                itemCount: state.items.length,
                itemBuilder: (context, index) => CartTile(
                  dish: state.items.keys.elementAt(index),
                  count: state.items.values.elementAt(index),
                ),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16),
              ),
            ),
          ),
          CupertinoButton(
            onPressed: () {},
            padding: const EdgeInsets.all(16),
            color: Styles.colorPrimary,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Text(
              context.intl
                  .cartBuy(context.watch<CartCubit>().cartSum.truncate())
                  .replaceAll('.', ' '),
              style: Styles.textCartBuy,
            ),
          ),
          const SizedBox(height: 16)
        ],
      ),
    );
  }
}
