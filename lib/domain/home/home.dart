import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_travel/domain/core/failures.dart';
import 'package:flutter_travel/domain/home/popular_destination.dart';
import 'package:flutter_travel/domain/home/recommendation.dart';
import 'package:flutter_travel/domain/home/room.dart';
import 'package:flutter_travel/domain/home/search.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home.freezed.dart';

@freezed
abstract class Home implements _$Home {
  const Home._();
  const factory Home({
    @required PopularDestination destination,
    @required Recommendation recommendation,
    @required Room room,
    @required Search search
  }) = _Home;

  Option<ValueFailure<dynamic>> get failureOption{
    return destination.optionFailure
        .andThen(recommendation.optionFailure)
        .andThen(room.failureOption)
        .andThen(search.failureOption)
        .fold(() => none(), (r) => some(r));
  }
}
