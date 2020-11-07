// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'room_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RoomDto _$RoomDtoFromJson(Map<String, dynamic> json) {
  return _RoomDto.fromJson(json);
}

/// @nodoc
class _$RoomDtoTearOff {
  const _$RoomDtoTearOff();

// ignore: unused_element
  _RoomDto call(
      {@JsonKey(ignore: true) String id,
      @required String imageUrl,
      @required String title,
      @required num amount,
      @required String currency,
      @required String unit,
      @required num rating}) {
    return _RoomDto(
      id: id,
      imageUrl: imageUrl,
      title: title,
      amount: amount,
      currency: currency,
      unit: unit,
      rating: rating,
    );
  }

// ignore: unused_element
  RoomDto fromJson(Map<String, Object> json) {
    return RoomDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RoomDto = _$RoomDtoTearOff();

/// @nodoc
mixin _$RoomDto {
  @JsonKey(ignore: true)
  String get id;
  String get imageUrl;
  String get title;
  num get amount;
  String get currency;
  String get unit;
  num get rating;

  Map<String, dynamic> toJson();
  $RoomDtoCopyWith<RoomDto> get copyWith;
}

/// @nodoc
abstract class $RoomDtoCopyWith<$Res> {
  factory $RoomDtoCopyWith(RoomDto value, $Res Function(RoomDto) then) =
      _$RoomDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String imageUrl,
      String title,
      num amount,
      String currency,
      String unit,
      num rating});
}

/// @nodoc
class _$RoomDtoCopyWithImpl<$Res> implements $RoomDtoCopyWith<$Res> {
  _$RoomDtoCopyWithImpl(this._value, this._then);

  final RoomDto _value;
  // ignore: unused_field
  final $Res Function(RoomDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object imageUrl = freezed,
    Object title = freezed,
    Object amount = freezed,
    Object currency = freezed,
    Object unit = freezed,
    Object rating = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      title: title == freezed ? _value.title : title as String,
      amount: amount == freezed ? _value.amount : amount as num,
      currency: currency == freezed ? _value.currency : currency as String,
      unit: unit == freezed ? _value.unit : unit as String,
      rating: rating == freezed ? _value.rating : rating as num,
    ));
  }
}

/// @nodoc
abstract class _$RoomDtoCopyWith<$Res> implements $RoomDtoCopyWith<$Res> {
  factory _$RoomDtoCopyWith(_RoomDto value, $Res Function(_RoomDto) then) =
      __$RoomDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String imageUrl,
      String title,
      num amount,
      String currency,
      String unit,
      num rating});
}

/// @nodoc
class __$RoomDtoCopyWithImpl<$Res> extends _$RoomDtoCopyWithImpl<$Res>
    implements _$RoomDtoCopyWith<$Res> {
  __$RoomDtoCopyWithImpl(_RoomDto _value, $Res Function(_RoomDto) _then)
      : super(_value, (v) => _then(v as _RoomDto));

  @override
  _RoomDto get _value => super._value as _RoomDto;

  @override
  $Res call({
    Object id = freezed,
    Object imageUrl = freezed,
    Object title = freezed,
    Object amount = freezed,
    Object currency = freezed,
    Object unit = freezed,
    Object rating = freezed,
  }) {
    return _then(_RoomDto(
      id: id == freezed ? _value.id : id as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      title: title == freezed ? _value.title : title as String,
      amount: amount == freezed ? _value.amount : amount as num,
      currency: currency == freezed ? _value.currency : currency as String,
      unit: unit == freezed ? _value.unit : unit as String,
      rating: rating == freezed ? _value.rating : rating as num,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RoomDto extends _RoomDto {
  const _$_RoomDto(
      {@JsonKey(ignore: true) this.id,
      @required this.imageUrl,
      @required this.title,
      @required this.amount,
      @required this.currency,
      @required this.unit,
      @required this.rating})
      : assert(imageUrl != null),
        assert(title != null),
        assert(amount != null),
        assert(currency != null),
        assert(unit != null),
        assert(rating != null),
        super._();

  factory _$_RoomDto.fromJson(Map<String, dynamic> json) =>
      _$_$_RoomDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String imageUrl;
  @override
  final String title;
  @override
  final num amount;
  @override
  final String currency;
  @override
  final String unit;
  @override
  final num rating;

  @override
  String toString() {
    return 'RoomDto(id: $id, imageUrl: $imageUrl, title: $title, amount: $amount, currency: $currency, unit: $unit, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RoomDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(unit) ^
      const DeepCollectionEquality().hash(rating);

  @override
  _$RoomDtoCopyWith<_RoomDto> get copyWith =>
      __$RoomDtoCopyWithImpl<_RoomDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RoomDtoToJson(this);
  }
}

abstract class _RoomDto extends RoomDto {
  const _RoomDto._() : super._();
  const factory _RoomDto(
      {@JsonKey(ignore: true) String id,
      @required String imageUrl,
      @required String title,
      @required num amount,
      @required String currency,
      @required String unit,
      @required num rating}) = _$_RoomDto;

  factory _RoomDto.fromJson(Map<String, dynamic> json) = _$_RoomDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get imageUrl;
  @override
  String get title;
  @override
  num get amount;
  @override
  String get currency;
  @override
  String get unit;
  @override
  num get rating;
  @override
  _$RoomDtoCopyWith<_RoomDto> get copyWith;
}
