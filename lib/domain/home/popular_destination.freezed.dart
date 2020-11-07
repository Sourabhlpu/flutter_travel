// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'popular_destination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PopularDestinationTearOff {
  const _$PopularDestinationTearOff();

// ignore: unused_element
  _PopularDestination call(
      {@required UniqueId id,
      @required ImageUrl imageUrl,
      @required PopularDestinationTitle title}) {
    return _PopularDestination(
      id: id,
      imageUrl: imageUrl,
      title: title,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PopularDestination = _$PopularDestinationTearOff();

/// @nodoc
mixin _$PopularDestination {
  UniqueId get id;
  ImageUrl get imageUrl;
  PopularDestinationTitle get title;

  $PopularDestinationCopyWith<PopularDestination> get copyWith;
}

/// @nodoc
abstract class $PopularDestinationCopyWith<$Res> {
  factory $PopularDestinationCopyWith(
          PopularDestination value, $Res Function(PopularDestination) then) =
      _$PopularDestinationCopyWithImpl<$Res>;
  $Res call({UniqueId id, ImageUrl imageUrl, PopularDestinationTitle title});
}

/// @nodoc
class _$PopularDestinationCopyWithImpl<$Res>
    implements $PopularDestinationCopyWith<$Res> {
  _$PopularDestinationCopyWithImpl(this._value, this._then);

  final PopularDestination _value;
  // ignore: unused_field
  final $Res Function(PopularDestination) _then;

  @override
  $Res call({
    Object id = freezed,
    Object imageUrl = freezed,
    Object title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as ImageUrl,
      title: title == freezed ? _value.title : title as PopularDestinationTitle,
    ));
  }
}

/// @nodoc
abstract class _$PopularDestinationCopyWith<$Res>
    implements $PopularDestinationCopyWith<$Res> {
  factory _$PopularDestinationCopyWith(
          _PopularDestination value, $Res Function(_PopularDestination) then) =
      __$PopularDestinationCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, ImageUrl imageUrl, PopularDestinationTitle title});
}

/// @nodoc
class __$PopularDestinationCopyWithImpl<$Res>
    extends _$PopularDestinationCopyWithImpl<$Res>
    implements _$PopularDestinationCopyWith<$Res> {
  __$PopularDestinationCopyWithImpl(
      _PopularDestination _value, $Res Function(_PopularDestination) _then)
      : super(_value, (v) => _then(v as _PopularDestination));

  @override
  _PopularDestination get _value => super._value as _PopularDestination;

  @override
  $Res call({
    Object id = freezed,
    Object imageUrl = freezed,
    Object title = freezed,
  }) {
    return _then(_PopularDestination(
      id: id == freezed ? _value.id : id as UniqueId,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as ImageUrl,
      title: title == freezed ? _value.title : title as PopularDestinationTitle,
    ));
  }
}

/// @nodoc
class _$_PopularDestination extends _PopularDestination {
  const _$_PopularDestination(
      {@required this.id, @required this.imageUrl, @required this.title})
      : assert(id != null),
        assert(imageUrl != null),
        assert(title != null),
        super._();

  @override
  final UniqueId id;
  @override
  final ImageUrl imageUrl;
  @override
  final PopularDestinationTitle title;

  @override
  String toString() {
    return 'PopularDestination(id: $id, imageUrl: $imageUrl, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PopularDestination &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(title);

  @override
  _$PopularDestinationCopyWith<_PopularDestination> get copyWith =>
      __$PopularDestinationCopyWithImpl<_PopularDestination>(this, _$identity);
}

abstract class _PopularDestination extends PopularDestination {
  const _PopularDestination._() : super._();
  const factory _PopularDestination(
      {@required UniqueId id,
      @required ImageUrl imageUrl,
      @required PopularDestinationTitle title}) = _$_PopularDestination;

  @override
  UniqueId get id;
  @override
  ImageUrl get imageUrl;
  @override
  PopularDestinationTitle get title;
  @override
  _$PopularDestinationCopyWith<_PopularDestination> get copyWith;
}
