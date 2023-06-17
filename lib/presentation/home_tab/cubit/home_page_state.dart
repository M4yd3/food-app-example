part of 'home_page_cubit.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState.initial() = Initial;

  const factory HomePageState.loaded(List<Category> categories) = Loaded;
}
