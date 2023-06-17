// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dish_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DishDto _$DishDtoFromJson(Map<String, dynamic> json) {
  return _DishDto.fromJson(json);
}

/// @nodoc
mixin _$DishDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'tegs')
  List<String> get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DishDtoCopyWith<DishDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DishDtoCopyWith<$Res> {
  factory $DishDtoCopyWith(DishDto value, $Res Function(DishDto) then) =
      _$DishDtoCopyWithImpl<$Res, DishDto>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      double price,
      double weight,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'tegs') List<String> tags});
}

/// @nodoc
class _$DishDtoCopyWithImpl<$Res, $Val extends DishDto>
    implements $DishDtoCopyWith<$Res> {
  _$DishDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? weight = null,
    Object? imageUrl = null,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$_DishDtoCopyWith<$Res> implements $DishDtoCopyWith<$Res> {
  factory _$$_DishDtoCopyWith(
          _$_DishDto value, $Res Function(_$_DishDto) then) =
      __$$_DishDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      double price,
      double weight,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'tegs') List<String> tags});
}

/// @nodoc
class __$$_DishDtoCopyWithImpl<$Res>
    extends _$DishDtoCopyWithImpl<$Res, _$_DishDto>
    implements _$$_DishDtoCopyWith<$Res> {
  __$$_DishDtoCopyWithImpl(_$_DishDto _value, $Res Function(_$_DishDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? weight = null,
    Object? imageUrl = null,
    Object? tags = null,
  }) {
    return _then(_$_DishDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
@JsonSerializable()
class _$_DishDto extends _DishDto {
  const _$_DishDto(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.weight,
      @JsonKey(name: 'image_url') required this.imageUrl,
      @JsonKey(name: 'tegs') required final List<String> tags})
      : _tags = tags,
        super._();

  factory _$_DishDto.fromJson(Map<String, dynamic> json) =>
      _$$_DishDtoFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final double price;
  @override
  final double weight;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  final List<String> _tags;
  @override
  @JsonKey(name: 'tegs')
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'DishDto(id: $id, name: $name, description: $description, price: $price, weight: $weight, imageUrl: $imageUrl, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DishDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, price,
      weight, imageUrl, const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DishDtoCopyWith<_$_DishDto> get copyWith =>
      __$$_DishDtoCopyWithImpl<_$_DishDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DishDtoToJson(
      this,
    );
  }
}

abstract class _DishDto extends DishDto {
  const factory _DishDto(
      {required final int id,
      required final String name,
      required final String description,
      required final double price,
      required final double weight,
      @JsonKey(name: 'image_url') required final String imageUrl,
      @JsonKey(name: 'tegs') required final List<String> tags}) = _$_DishDto;
  const _DishDto._() : super._();

  factory _DishDto.fromJson(Map<String, dynamic> json) = _$_DishDto.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  double get price;
  @override
  double get weight;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(name: 'tegs')
  List<String> get tags;
  @override
  @JsonKey(ignore: true)
  _$$_DishDtoCopyWith<_$_DishDto> get copyWith =>
      throw _privateConstructorUsedError;
}

DishesDto _$DishesDtoFromJson(Map<String, dynamic> json) {
  return _DishesDto.fromJson(json);
}

/// @nodoc
mixin _$DishesDto {
  List<DishDto> get dishes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DishesDtoCopyWith<DishesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DishesDtoCopyWith<$Res> {
  factory $DishesDtoCopyWith(DishesDto value, $Res Function(DishesDto) then) =
      _$DishesDtoCopyWithImpl<$Res, DishesDto>;
  @useResult
  $Res call({List<DishDto> dishes});
}

/// @nodoc
class _$DishesDtoCopyWithImpl<$Res, $Val extends DishesDto>
    implements $DishesDtoCopyWith<$Res> {
  _$DishesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dishes = null,
  }) {
    return _then(_value.copyWith(
      dishes: null == dishes
          ? _value.dishes
          : dishes // ignore: cast_nullable_to_non_nullable
              as List<DishDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DishesDtoCopyWith<$Res> implements $DishesDtoCopyWith<$Res> {
  factory _$$_DishesDtoCopyWith(
          _$_DishesDto value, $Res Function(_$_DishesDto) then) =
      __$$_DishesDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DishDto> dishes});
}

/// @nodoc
class __$$_DishesDtoCopyWithImpl<$Res>
    extends _$DishesDtoCopyWithImpl<$Res, _$_DishesDto>
    implements _$$_DishesDtoCopyWith<$Res> {
  __$$_DishesDtoCopyWithImpl(
      _$_DishesDto _value, $Res Function(_$_DishesDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dishes = null,
  }) {
    return _then(_$_DishesDto(
      dishes: null == dishes
          ? _value._dishes
          : dishes // ignore: cast_nullable_to_non_nullable
              as List<DishDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DishesDto extends _DishesDto {
  const _$_DishesDto({required final List<DishDto> dishes})
      : _dishes = dishes,
        super._();

  factory _$_DishesDto.fromJson(Map<String, dynamic> json) =>
      _$$_DishesDtoFromJson(json);

  final List<DishDto> _dishes;
  @override
  List<DishDto> get dishes {
    if (_dishes is EqualUnmodifiableListView) return _dishes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dishes);
  }

  @override
  String toString() {
    return 'DishesDto(dishes: $dishes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DishesDto &&
            const DeepCollectionEquality().equals(other._dishes, _dishes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_dishes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DishesDtoCopyWith<_$_DishesDto> get copyWith =>
      __$$_DishesDtoCopyWithImpl<_$_DishesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DishesDtoToJson(
      this,
    );
  }
}

abstract class _DishesDto extends DishesDto {
  const factory _DishesDto({required final List<DishDto> dishes}) =
      _$_DishesDto;
  const _DishesDto._() : super._();

  factory _DishesDto.fromJson(Map<String, dynamic> json) =
      _$_DishesDto.fromJson;

  @override
  List<DishDto> get dishes;
  @override
  @JsonKey(ignore: true)
  _$$_DishesDtoCopyWith<_$_DishesDto> get copyWith =>
      throw _privateConstructorUsedError;
}
