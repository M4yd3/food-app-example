// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DishDto _$$_DishDtoFromJson(Map<String, dynamic> json) => _$_DishDto(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      weight: (json['weight'] as num).toDouble(),
      imageUrl: json['image_url'] as String,
      tags: (json['tegs'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_DishDtoToJson(_$_DishDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'weight': instance.weight,
      'image_url': instance.imageUrl,
      'tegs': instance.tags,
    };

_$_DishesDto _$$_DishesDtoFromJson(Map<String, dynamic> json) => _$_DishesDto(
      dishes: (json['dishes'] as List<dynamic>)
          .map((e) => DishDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DishesDtoToJson(_$_DishesDto instance) =>
    <String, dynamic>{
      'dishes': instance.dishes.map((e) => e.toJson()).toList(),
    };
