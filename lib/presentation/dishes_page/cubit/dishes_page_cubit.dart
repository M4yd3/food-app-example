import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/dish/dish_repository.dart';
import '../../../domain/dish/models/dish.dart';

part 'dishes_page_state.dart';
part 'dishes_page_cubit.freezed.dart';

class DishesPageCubit extends Cubit<DishesPageState> {
  DishesPageCubit(this._repository) : super(const DishesPageState.initial());

  final DishRepository _repository;

  Future<void> loadData() async {
    final tags = await _repository.getTags();

    final newState = DishesPageState.loaded(
      tag: tags.first,
      tags: tags,
      dishes: await _repository.getDishes(),
    );

    emit(newState);
  }

  Future<void> setTag(String tag) async {
    final dishes = await _repository.getDishesByTag(tag);

    if (state is! Loaded) return;

    emit((state as Loaded).copyWith(tag: tag, dishes: dishes));
  }
}
