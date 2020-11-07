// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RoomTearOff {
  const _$RoomTearOff();

  _Room call(
      {@required UniqueId id,
      @required ImageUrl imageUrl,
      @required SearchTitle title,
      @required Price price,
      @required Rating rating}) {
    return _Room(
      id: id,
      imageUrl: imageUrl,
      title: title,
      price: price,
      rating: rating,
    );
  }
}

// ignore: unused_element
const $Room = _$RoomTearOff();

mixin _$Room {
  UniqueId get id;
  ImageUrl get imageUrl;
  SearchTitle get title;
  Price get price;
  Rating get rating;

  $RoomCopyWith<Room> get copyWith;
}

abstract class $RoomCopyWith<$Res> {
  factory $RoomCopyWith(Room value, $Res Function(Room) then) =
      _$RoomCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      ImageUrl imageUrl,
      SearchTitle title,
      Price price,
      Rating rating});
}

class _$RoomCopyWithImpl<$Res> implements $RoomCopyWith<$Res> {
  _$RoomCopyWithImpl(this._value, this._then);

  final Room _value;
  // ignore: unused_field
  final $Res Function(Room) _then;

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

abstract class _$RoomCopyWith<$Res> implements $RoomCopyWith<$Res> {
  factory _$RoomCopyWith(_Room value, $Res Function(_Room) then) =
      __$RoomCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      ImageUrl imageUrl,
      SearchTitle title,
      Price price,
      Rating rating});
}

class __$RoomCopyWithImpl<$Res> extends _$RoomCopyWithImpl<$Res>
    implements _$RoomCopyWith<$Res> {
  __$RoomCopyWithImpl(_Room _value, $Res Function(_Room) _then)
      : super(_value, (v) => _then(v as _Room));

  @override
  _Room get _value => super._value as _Room;

  @override
  $Res call({
    Object id = freezed,
    Object imageUrl = freezed,
    Object title = freezed,
    Object price = freezed,
    Object rating = freezed,
  }) {
    return _then(_Room(
      id: id == freezed ? _value.id : id as UniqueId,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as ImageUrl,
      title: title == freezed ? _value.title : title as SearchTitle,
      price: price == freezed ? _value.price : price as Price,
      rating: rating == freezed ? _value.rating : rating as Rating,
    ));
  }
}

class _$_Room extends _Room {
  const _$_Room(
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
    return 'Room(id: $id, imageUrl: $imageUrl, title: $title, price: $price, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Room &&
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
  _$RoomCopyWith<_Room> get copyWith =>
      __$RoomCopyWithImpl<_Room>(this, _$identity);
}

abstract class _Room extends Room {
  const _Room._() : super._();
  const factory _Room(
      {@required UniqueId id,
      @required ImageUrl imageUrl,
      @required SearchTitle title,
      @required Price price,
      @required Rating rating}) = _$_Room;

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
  _$RoomCopyWith<_Room> get copyWith;
}
