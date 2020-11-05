
import 'package:dartz/dartz.dart';
import 'package:flutter_travel/domain/core/failures.dart';
import 'package:flutter_travel/domain/core/value_objects.dart';
import 'package:flutter_travel/domain/home/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search.freezed.dart';
@freezed
abstract class Search implements _$Search{
  const Search._();
  const factory Search({
    @required UniqueId id,
    @required ImageUrl imageUrl,
    @required SearchTitle title,
    @required Price price,
    @required Rating rating
  }) = _Search;

  Option<ValueFailure<dynamic>> get failureOption{
    return imageUrl.failureOrUnit
        .andThen(title.failureOrUnit)
        .andThen(title.failureOrUnit)
        .andThen(price.failureOrUnit)
        .andThen(rating.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}