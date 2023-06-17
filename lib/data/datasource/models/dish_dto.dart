// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/dish/models/dish.dart';

part 'dish_dto.freezed.dart';

part 'dish_dto.g.dart';

@freezed
class DishDto with _$DishDto {
  const factory DishDto({
    required int id,
    required String name,
    required String description,
    required double price,
    required double weight,
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'tegs') required List<String> tags,
  }) = _DishDto;

  const DishDto._();

  factory DishDto.fromJson(Map<String, dynamic> json) =>
      _$DishDtoFromJson(json);

  Dish toDomain() => Dish(
        name: name,
        description: description,
        price: price,
        weight: weight,
        imageUrl: imageUrl,
        tags: tags,
      );
}

@freezed
class DishesDto with _$DishesDto {
  const factory DishesDto({
    required List<DishDto> dishes,
  }) = _DishesDto;

  const DishesDto._();

  factory DishesDto.fromJson(Map<String, dynamic> json) =>
      _$DishesDtoFromJson(json);

  List<Dish> toDomain() => dishes.map((e) => e.toDomain()).toList();
}
