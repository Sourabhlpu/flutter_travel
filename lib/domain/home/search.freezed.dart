// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SearchTearOff {
  const _$SearchTearOff();

  _Search call(
      {@required UniqueId id,
      @required ImageUrl imageUrl,
      @required SearchTitle title,
      @required Price price,
      @required Rating rating}) {
    return _Search(
      id: id,
      imageUrl: imageUrl,
      title: title,
      price: price,
      rating: rating,
    );
  }
}

// ignore: unused_element
const $Search = _$SearchTearOff();

mixin _$Search {
  UniqueId get id;
  ImageUrl get imageUrl;
  SearchTitle get title;
  Price get price;
  Rating get rating;

  $SearchCopyWith<Search> get copyWith;
}

abstract class $SearchCopyWith<$Res> {
  factory $SearchCopyWith(Search value, $Res Function(Search) then) =
      _$SearchCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      ImageUrl imageUrl,
      SearchTitle title,
      Price price,
      Rating rating});
}

class _$SearchCopyWithImpl<$Res> implements $SearchCopyWith<$Res> {
  _$SearchCopyWithImpl(this._value, this._then);

  final Search _value;
  // ignore: unused_field
  final $Res Function(Search) _then;

  @override
  $Res call({
    Object id = freezed,
    Object imageUrl = freezed,
    Object title = freezed,
    Object price = freezed,
    Object rating = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as ImageUrl,
      title: title == freezed ? _value.title : title as SearchTitle,
      price: price == freezed ? _value.price : price as Price,
      rating: rating == freezed ? _value.rating : rating as Rating,
    ));
  }
}

abstract class _$SearchCopyWith<$Res> implements $SearchCopyWith<$Res> {
  factory _$SearchCopyWith(_Search value, $Res Function(_Search) then) =
      __$SearchCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      ImageUrl imageUrl,
      SearchTitle title,
      Price price,
      Rating rating});
}

class __$SearchCopyWithImpl<$Res> extends _$SearchCopyWithImpl<$Res>
    implements _$SearchCopyWith<$Res> {
  __$SearchCopyWithImpl(_Search _value, $Res Function(_Search) _then)
      : super(_value, (v) => _then(v as _Search));

  @override
  _Search get _value => super._value as _Search;

  @override
  $Res call({
    Object id = freezed,
    Object imageUrl = freezed,
    Object title = freezed,
    Object price = freezed,
    Object rating = freezed,
  }) {
    return _then(_Search(
      id: id == freezed ? _value.id : id as UniqueId,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as ImageUrl,
      title: title == freezed ? _value.title : title as SearchTitle,
      price: price == freezed ? _value.price : price as Price,
      rating: rating == freezed ? _value.rating : rating as Rating,
    ));
  }
}

class _$_Search extends _Search {
  const _$_Search(
      {@required this.id,
      @required this.imageUrl,
      @required this.title,
      @required this.price,
      @required this.rating})
      : assert(id != null),
        assert(imageUrl != null),
        assert(title != null),
        assert(price != null),
        assert(rating != null),
        super._();

  @override
  final UniqueId id;
  @override
  final ImageUrl imageUrl;
  @override
  final SearchTitle title;
  @override
  final Price price;
  @override
  final Rating rating;

  @override
  String toString() {
    return 'Search(id: $id, imageUrl: $imageUrl, title: $title, price: $price, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Search &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(rating);

  @override
  _$SearchCopyWith<_Search> get copyWith =>
      __$SearchCopyWithImpl<_Search>(this, _$identity);
}

abstract class _Search extends Search {
  const _Search._() : super._();
  const factory _Search(
      {@required UniqueId id,
      @required ImageUrl imageUrl,
      @required SearchTitle title,
      @required Price price,
      @required Rating rating}) = _$_Search;

  @override
  UniqueId get id;
  @override
  ImageUrl get imageUrl;
  @override
  SearchTitle get title;
  @override
  Price get price;
  @override
  Rating get rating;
  @override
  _$SearchCopyWith<_Search> get copyWith;
}
