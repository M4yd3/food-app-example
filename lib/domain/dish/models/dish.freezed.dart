// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dish.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Dish {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DishCopyWith<Dish> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DishCopyWith<$Res> {
  factory $DishCopyWith(Dish value, $Res Function(Dish) then) =
      _$DishCopyWithImpl<$Res, Dish>;
  @useResult
  $Res call(
      {String name,
      String description,
      double price,
      double weight,
      String imageUrl,
      List<String> tags});
}

/// @nodoc
class _$DishCopyWithImpl<$Res, $Val extends Dish>
    implements $DishCopyWith<$Res> {
  _$DishCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? weight = null,
    Object? imageUrl = null,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DishCopyWith<$Res> implements $DishCopyWith<$Res> {
  factory _$$_DishCopyWith(_$_Dish value, $Res Function(_$_Dish) then) =
      __$$_DishCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      double price,
      double weight,
      String imageUrl,
      List<String> tags});
}

/// @nodoc
class __$$_DishCopyWithImpl<$Res> extends _$DishCopyWithImpl<$Res, _$_Dish>
    implements _$$_DishCopyWith<$Res> {
  __$$_DishCopyWithImpl(_$_Dish _value, $Res Function(_$_Dish) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? weight = null,
    Object? imageUrl = null,
    Object? tags = null,
  }) {
    return _then(_$_Dish(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_Dish extends _Dish {
  const _$_Dish(
      {required this.name,
      required this.description,
      required this.price,
      required this.weight,
      required this.imageUrl,
      required final List<String> tags})
      : _tags = tags,
        super._();

  @override
  final String name;
  @override
  final String description;
  @override
  final double price;
  @override
  final double weight;
  @override
  final String imageUrl;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'Dish(name: $name, description: $description, price: $price, weight: $weight, imageUrl: $imageUrl, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Dish &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description, price, weight,
      imageUrl, const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DishCopyWith<_$_Dish> get copyWith =>
      __$$_DishCopyWithImpl<_$_Dish>(this, _$identity);
}

abstract class _Dish extends Dish {
  const factory _Dish(
      {required final String name,
      required final String description,
      required final double price,
      required final double weight,
      required final String imageUrl,
      required final List<String> tags}) = _$_Dish;
  const _Dish._() : super._();

  @override
  String get name;
  @override
  String get description;
  @override
  double get price;
  @override
  double get weight;
  @override
  String get imageUrl;
  @override
  List<String> get tags;
  @override
  @JsonKey(ignore: true)
  _$$_DishCopyWith<_$_Dish> get copyWith => throw _privateConstructorUsedError;
}
