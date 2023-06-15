// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/category/models/category.dart';

part 'category_dto.freezed.dart';
part 'category_dto.g.dart';

@freezed
class CategoryDto with _$CategoryDto {
  const factory CategoryDto({
    required int id,
    required String name,
    @JsonKey(name: 'image_url') required String imageUrl,
  }) = _CategoryDto;

  const CategoryDto._();

  factory CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryDtoFromJson(json);

  Category toDomain() => Category(name: name, imageUrl: imageUrl);
}

@freezed
class CategoriesDto with _$CategoriesDto {
  const factory CategoriesDto({
    @JsonKey(name: 'сategories') required List<CategoryDto> categories,
  }) = _CategoriesDto;

  const CategoriesDto._();

  factory CategoriesDto.fromJson(Map<String, dynamic> json) =>
      _$CategoriesDtoFromJson(json);

  List<Category> toDomain() => categories.map((e) => e.toDomain()).toList();
}
