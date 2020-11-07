import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travel/domain/core/value_validators.dart';
import 'package:flutter_travel/infrastructure/home/price_dtos.dart';
import 'package:uuid/uuid.dart';
import 'errors.dart';
import 'failures.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  T getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  bool isValid() => value.isRight();

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ValueObject<T> &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value{$value}';
}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(right(Uuid().v1()));
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    assert(uniqueId != null);
    return UniqueId._(right(uniqueId));
  }

  const UniqueId._(this.value);
}

class ImageUrl extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const ImageUrl._(this.value);

  factory ImageUrl(String input) {
    assert(input != null);
    return ImageUrl._(validateImageUrl(input));
  }
}

class Price extends ValueObject<PriceDto>{
  @override
  final Either<ValueFailure<PriceDto>, PriceDto> value;

  const Price._(this.value);

  factory Price(PriceDto priceDto){
    assert(priceDto != null);
        return Price._(validatePrice(priceDto));
  }
}

class Rating extends ValueObject<num>{
  @override
  final Either<ValueFailure<num>, num> value;

  const Rating._(this.value);
  static const num minVal = 0.0;
  static const num maxVal = 5.0;

  factory Rating(num input){
    assert(input != null);
    return Rating._(
      validateInRange(input, minVal, maxVal)
    );
  }
}
