import 'package:dartz/dartz.dart';
import 'package:flutter_travel/domain/core/failures.dart';
import 'package:flutter_travel/domain/core/value_objects.dart';
import 'package:flutter_travel/domain/home/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_destination.freezed.dart';
@freezed
abstract class PopularDestination implements _$PopularDestination{
  const PopularDestination._();
  const factory PopularDestination({
    @required UniqueId id,
    @required ImageUrl imageUrl,
    @required PopularDestinationTitle title,
  }) = _PopularDestination;

  Option<ValueFailure<dynamic>> get optionFailure{
    return imageUrl.failureOrUnit
        .andThen(title.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}