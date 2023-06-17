import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/category/category_repository.dart';
import '../../../domain/category/models/category.dart';

part 'home_page_cubit.freezed.dart';
part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit(this._repository) : super(const HomePageState.initial());

  final CategoryRepository _repository;

  Future<void> loadCategories() async {
    final categories = await _repository.getCategories();

    if (categories == null) {
      debugPrint('Failed with: $categories');
      return Future.delayed(const Duration(milliseconds: 500), loadCategories);
    }

    if (!isClosed) emit(HomePageState.loaded(categories));
  }
}
