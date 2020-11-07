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

class RecommendationType extends ValueObject<String>{
  @override
  final Either<ValueFailure<String>, String> value;
  const RecommendationType._(this.value);

  static const int maxLength = 15;
  factory RecommendationType(String input){
    assert(input != null);
    return RecommendationType._(
        validateMaxStringLength(input, maxLength).flatMap(validateSingleLine).flatMap(validateStringNotEmpty)
    );
  }
}

class RecommendationTitle extends ValueObject<String>{
  @override
  final Either<ValueFailure<String>, String> value;
  const RecommendationTitle._(this.value);

  static const int maxLength = 20;
  factory RecommendationTitle(String input){
    assert(input != null);
    return RecommendationTitle._(
        validateMaxStringLength(input, maxLength).flatMap(validateSingleLine).flatMap(validateStringNotEmpty)
    );
  }
}

class RecommendationDescription extends ValueObject<String>{
  @override
  final Either<ValueFailure<String>, String> value;
  const RecommendationDescription._(this.value);

  static const int maxLength = 100;
  factory RecommendationDescription(String input){
    assert(input != null);
    return RecommendationDescription._(
        validateMaxStringLength(input, maxLength).flatMap(validateSingleLine).flatMap(validateStringNotEmpty)
    );
  }
}

class PopularDestinationTitle extends ValueObject<String>{
  @override
  final Either<ValueFailure<String>, String> value;
  const PopularDestinationTitle._(this.value);

  static const int maxLength = 15;
  factory PopularDestinationTitle(String input){
    assert(input != null);
    return PopularDestinationTitle._(
        validateMaxStringLength(input, maxLength).flatMap(validateSingleLine).flatMap(validateStringNotEmpty)
    );
  }
}