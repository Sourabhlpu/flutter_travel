import 'package:dartz/dartz.dart';
import 'package:flutter_travel/domain/core/failures.dart';
import 'package:flutter_travel/domain/core/value_objects.dart';
import 'package:flutter_travel/domain/core/value_validators.dart';

class SearchTitle extends ValueObject<String>{
  @override
  final Either<ValueFailure<String>, String> value;
  const SearchTitle._(this.value);

  static const int maxLength = 1000;
  factory SearchTitle(String input){
    assert(input != null);
    return SearchTitle._(
      validateMaxStringLength(input, maxLength).flatMap(validateSingleLine).flatMap(validateStringNotEmpty)
    );
  }
}