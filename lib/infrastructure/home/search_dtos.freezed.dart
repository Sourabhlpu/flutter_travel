// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SearchDto _$SearchDtoFromJson(Map<String, dynamic> json) {
  return _SearchDto.fromJson(json);
}

/// @nodoc
class _$SearchDtoTearOff {
  const _$SearchDtoTearOff();

// ignore: unused_element
  _SearchDto call(
      {@JsonKey(ignore: true) String id,
      @required String imageUrl,
      @required String title,
      @required num amount,
      @required String currency,
      @required String unit}) {
    return _SearchDto(
      id: id,
      imageUrl: imageUrl,
      title: title,
      amount: amount,
      currency: currency,
      unit: unit,
    );
  }

// ignore: unused_element
  SearchDto fromJson(Map<String, Object> json) {
    return SearchDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SearchDto = _$SearchDtoTearOff();

/// @nodoc
mixin _$SearchDto {
  @JsonKey(ignore: true)
  String get id;
  String get imageUrl;
  String get title;
  num get amount;
  String get currency;
  String get unit;

  Map<String, dynamic> toJson();
  $SearchDtoCopyWith<SearchDto> get copyWith;
}

/// @nodoc
abstract class $SearchDtoCopyWith<$Res> {
  factory $SearchDtoCopyWith(SearchDto value, $Res Function(SearchDto) then) =
      _$SearchDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String imageUrl,
      String title,
      num amount,
      String currency,
      String unit});
}

/// @nodoc
class _$SearchDtoCopyWithImpl<$Res> implements $SearchDtoCopyWith<$Res> {
  _$SearchDtoCopyWithImpl(this._value, this._then);

  final SearchDto _value;
  // ignore: unused_field
  final $Res Function(SearchDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object imageUrl = freezed,
    Object title = freezed,
    Object amount = freezed,
    Object currency = freezed,
    Object unit = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      title: title == freezed ? _value.title : title as String,
      amount: amount == freezed ? _value.amount : amount as num,
      currency: currency == freezed ? _value.currency : currency as String,
      unit: unit == freezed ? _value.unit : unit as String,
    ));
  }
}

/// @nodoc
abstract class _$SearchDtoCopyWith<$Res> implements $SearchDtoCopyWith<$Res> {
  factory _$SearchDtoCopyWith(
          _SearchDto value, $Res Function(_SearchDto) then) =
      __$SearchDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String imageUrl,
      String title,
      num amount,
      String currency,
      String unit});
}

/// @nodoc
class __$SearchDtoCopyWithImpl<$Res> extends _$SearchDtoCopyWithImpl<$Res>
    implements _$SearchDtoCopyWith<$Res> {
  __$SearchDtoCopyWithImpl(_SearchDto _value, $Res Function(_SearchDto) _then)
      : super(_value, (v) => _then(v as _SearchDto));

  @override
  _SearchDto get _value => super._value as _SearchDto;

  @override
  $Res call({
    Object id = freezed,
    Object imageUrl = freezed,
    Object title = freezed,
    Object amount = freezed,
    Object currency = freezed,
    Object unit = freezed,
  }) {
    return _then(_SearchDto(
      id: id == freezed ? _value.id : id as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      title: title == freezed ? _value.title : title as String,
      amount: amount == freezed ? _value.amount : amount as num,
      currency: currency == freezed ? _value.currency : currency as String,
      unit: unit == freezed ? _value.unit : unit as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SearchDto extends _SearchDto {
  const _$_SearchDto(
      {@JsonKey(ignore: true) this.id,
      @required this.imageUrl,
      @required this.title,
      @required this.amount,
      @required this.currency,
      @required this.unit})
      : assert(imageUrl != null),
        assert(title != null),
        assert(amount != null),
        assert(currency != null),
        assert(unit != null),
        super._();

  factory _$_SearchDto.fromJson(Map<String, dynamic> json) =>
      _$_$_SearchDtoFromJson(json);

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
  String toString() {
    return 'SearchDto(id: $id, imageUrl: $imageUrl, title: $title, amount: $amount, currency: $currency, unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchDto &&
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
                const DeepCollectionEquality().equals(other.unit, unit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(unit);

  @override
  _$SearchDtoCopyWith<_SearchDto> get copyWith =>
      __$SearchDtoCopyWithImpl<_SearchDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SearchDtoToJson(this);
  }
}

abstract class _SearchDto extends SearchDto {
  const _SearchDto._() : super._();
  const factory _SearchDto(
      {@JsonKey(ignore: true) String id,
      @required String imageUrl,
      @required String title,
      @required num amount,
      @required String currency,
      @required String unit}) = _$_SearchDto;

  factory _SearchDto.fromJson(Map<String, dynamic> json) =
      _$_SearchDto.fromJson;

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
  _$SearchDtoCopyWith<_SearchDto> get copyWith;
}
