import 'package:dartz/dartz.dart';
import 'package:flutter_travel/domain/core/failures.dart';
import 'package:flutter_travel/domain/core/value_objects.dart';
import 'package:flutter_travel/domain/home/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recommendation.freezed.dart';
@freezed
abstract class Recommendation implements _$Recommendation{
  const Recommendation._();
  const factory Recommendation({
    @required UniqueId id,
    @required ImageUrl imageUrl,
    @required RecommendationTitle title,
    @required RecommendationType type,
    @required RecommendationDescription description
  }) = _Recommendation;

  Option<ValueFailure<dynamic>> get optionFailure{
    return imageUrl.failureOrUnit
        .andThen(title.failureOrUnit)
        .andThen(type.failureOrUnit)
        .andThen(description.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}