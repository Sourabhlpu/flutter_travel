// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'price_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PriceDtoTearOff {
  const _$PriceDtoTearOff();

// ignore: unused_element
  _PriceDto call(
      {@required String currency,
      @required String unit,
      @required num amount}) {
    return _PriceDto(
      currency: currency,
      unit: unit,
      amount: amount,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PriceDto = _$PriceDtoTearOff();

/// @nodoc
mixin _$PriceDto {
  String get currency;
  String get unit;
  num get amount;

  $PriceDtoCopyWith<PriceDto> get copyWith;
}

/// @nodoc
abstract class $PriceDtoCopyWith<$Res> {
  factory $PriceDtoCopyWith(PriceDto value, $Res Function(PriceDto) then) =
      _$PriceDtoCopyWithImpl<$Res>;
  $Res call({String currency, String unit, num amount});
}

/// @nodoc
class _$PriceDtoCopyWithImpl<$Res> implements $PriceDtoCopyWith<$Res> {
  _$PriceDtoCopyWithImpl(this._value, this._then);

  final PriceDto _value;
  // ignore: unused_field
  final $Res Function(PriceDto) _then;

  @override
  $Res call({
    Object currency = freezed,
    Object unit = freezed,
    Object amount = freezed,
  }) {
    return _then(_value.copyWith(
      currency: currency == freezed ? _value.currency : currency as String,
      unit: unit == freezed ? _value.unit : unit as String,
      amount: amount == freezed ? _value.amount : amount as num,
    ));
  }
}

/// @nodoc
abstract class _$PriceDtoCopyWith<$Res> implements $PriceDtoCopyWith<$Res> {
  factory _$PriceDtoCopyWith(_PriceDto value, $Res Function(_PriceDto) then) =
      __$PriceDtoCopyWithImpl<$Res>;
  @override
  $Res call({String currency, String unit, num amount});
}

/// @nodoc
class __$PriceDtoCopyWithImpl<$Res> extends _$PriceDtoCopyWithImpl<$Res>
    implements _$PriceDtoCopyWith<$Res> {
  __$PriceDtoCopyWithImpl(_PriceDto _value, $Res Function(_PriceDto) _then)
      : super(_value, (v) => _then(v as _PriceDto));

  @override
  _PriceDto get _value => super._value as _PriceDto;

  @override
  $Res call({
    Object currency = freezed,
    Object unit = freezed,
    Object amount = freezed,
  }) {
    return _then(_PriceDto(
      currency: currency == freezed ? _value.currency : currency as String,
      unit: unit == freezed ? _value.unit : unit as String,
      amount: amount == freezed ? _value.amount : amount as num,
    ));
  }
}

/// @nodoc
class _$_PriceDto extends _PriceDto {
  const _$_PriceDto(
      {@required this.currency, @required this.unit, @required this.amount})
      : assert(currency != null),
        assert(unit != null),
        assert(amount != null),
        super._();

  @override
  final String currency;
  @override
  final String unit;
  @override
  final num amount;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PriceDto &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(unit) ^
      const DeepCollectionEquality().hash(amount);

  @override
  _$PriceDtoCopyWith<_PriceDto> get copyWith =>
      __$PriceDtoCopyWithImpl<_PriceDto>(this, _$identity);
}

abstract class _PriceDto extends PriceDto {
  const _PriceDto._() : super._();
  const factory _PriceDto(
      {@required String currency,
      @required String unit,
      @required num amount}) = _$_PriceDto;

  @override
  String get currency;
  @override
  String get unit;
  @override
  num get amount;
  @override
  _$PriceDtoCopyWith<_PriceDto> get copyWith;
}
