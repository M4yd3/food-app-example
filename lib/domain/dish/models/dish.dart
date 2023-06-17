import 'package:freezed_annotation/freezed_annotation.dart';

part 'dish.freezed.dart';

@freezed
class Dish with _$Dish {
  const factory Dish({
    required String name,
    required String description,
    required double price,
    required double weight,
    required String imageUrl,
    required List<String> tags,
  }) = _Dish;

  const Dish._();
}
