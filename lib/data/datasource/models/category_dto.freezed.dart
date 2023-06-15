// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryDto _$CategoryDtoFromJson(Map<String, dynamic> json) {
  return _CategoryDto.fromJson(json);
}

/// @nodoc
mixin _$CategoryDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDtoCopyWith<CategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDtoCopyWith<$Res> {
  factory $CategoryDtoCopyWith(
          CategoryDto value, $Res Function(CategoryDto) then) =
      _$CategoryDtoCopyWithImpl<$Res, CategoryDto>;
  @useResult
  $Res call({int id, String name, @JsonKey(name: 'image_url') String imageUrl});
}

/// @nodoc
class _$CategoryDtoCopyWithImpl<$Res, $Val extends CategoryDto>
    implements $CategoryDtoCopyWith<$Res> {
  _$CategoryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
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
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryDtoCopyWith<$Res>
    implements $CategoryDtoCopyWith<$Res> {
  factory _$$_CategoryDtoCopyWith(
          _$_CategoryDto value, $Res Function(_$_CategoryDto) then) =
      __$$_CategoryDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, @JsonKey(name: 'image_url') String imageUrl});
}

/// @nodoc
class __$$_CategoryDtoCopyWithImpl<$Res>
    extends _$CategoryDtoCopyWithImpl<$Res, _$_CategoryDto>
    implements _$$_CategoryDtoCopyWith<$Res> {
  __$$_CategoryDtoCopyWithImpl(
      _$_CategoryDto _value, $Res Function(_$_CategoryDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
  }) {
    return _then(_$_CategoryDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryDto extends _CategoryDto {
  const _$_CategoryDto(
      {required this.id,
      required this.name,
      @JsonKey(name: 'image_url') required this.imageUrl})
      : super._();

  factory _$_CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryDtoFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;

  @override
  String toString() {
    return 'CategoryDto(id: $id, name: $name, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryDtoCopyWith<_$_CategoryDto> get copyWith =>
      __$$_CategoryDtoCopyWithImpl<_$_CategoryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryDtoToJson(
      this,
    );
  }
}

abstract class _CategoryDto extends CategoryDto {
  const factory _CategoryDto(
          {required final int id,
          required final String name,
          @JsonKey(name: 'image_url') required final String imageUrl}) =
      _$_CategoryDto;
  const _CategoryDto._() : super._();

  factory _CategoryDto.fromJson(Map<String, dynamic> json) =
      _$_CategoryDto.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryDtoCopyWith<_$_CategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoriesDto _$CategoriesDtoFromJson(Map<String, dynamic> json) {
  return _CategoriesDto.fromJson(json);
}

/// @nodoc
mixin _$CategoriesDto {
  @JsonKey(name: 'сategories')
  List<CategoryDto> get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoriesDtoCopyWith<CategoriesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesDtoCopyWith<$Res> {
  factory $CategoriesDtoCopyWith(
          CategoriesDto value, $Res Function(CategoriesDto) then) =
      _$CategoriesDtoCopyWithImpl<$Res, CategoriesDto>;
  @useResult
  $Res call({@JsonKey(name: 'сategories') List<CategoryDto> categories});
}

/// @nodoc
class _$CategoriesDtoCopyWithImpl<$Res, $Val extends CategoriesDto>
    implements $CategoriesDtoCopyWith<$Res> {
  _$CategoriesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoriesDtoCopyWith<$Res>
    implements $CategoriesDtoCopyWith<$Res> {
  factory _$$_CategoriesDtoCopyWith(
          _$_CategoriesDto value, $Res Function(_$_CategoriesDto) then) =
      __$$_CategoriesDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'сategories') List<CategoryDto> categories});
}

/// @nodoc
class __$$_CategoriesDtoCopyWithImpl<$Res>
    extends _$CategoriesDtoCopyWithImpl<$Res, _$_CategoriesDto>
    implements _$$_CategoriesDtoCopyWith<$Res> {
  __$$_CategoriesDtoCopyWithImpl(
      _$_CategoriesDto _value, $Res Function(_$_CategoriesDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$_CategoriesDto(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoriesDto extends _CategoriesDto {
  const _$_CategoriesDto(
      {@JsonKey(name: 'сategories')
          required final List<CategoryDto> categories})
      : _categories = categories,
        super._();

  factory _$_CategoriesDto.fromJson(Map<String, dynamic> json) =>
      _$$_CategoriesDtoFromJson(json);

  final List<CategoryDto> _categories;
  @override
  @JsonKey(name: 'сategories')
  List<CategoryDto> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'CategoriesDto(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoriesDto &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoriesDtoCopyWith<_$_CategoriesDto> get copyWith =>
      __$$_CategoriesDtoCopyWithImpl<_$_CategoriesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoriesDtoToJson(
      this,
    );
  }
}

abstract class _CategoriesDto extends CategoriesDto {
  const factory _CategoriesDto(
      {@JsonKey(name: 'сategories')
          required final List<CategoryDto> categories}) = _$_CategoriesDto;
  const _CategoriesDto._() : super._();

  factory _CategoriesDto.fromJson(Map<String, dynamic> json) =
      _$_CategoriesDto.fromJson;

  @override
  @JsonKey(name: 'сategories')
  List<CategoryDto> get categories;
  @override
  @JsonKey(ignore: true)
  _$$_CategoriesDtoCopyWith<_$_CategoriesDto> get copyWith =>
      throw _privateConstructorUsedError;
}
