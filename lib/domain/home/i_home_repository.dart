import 'package:dartz/dartz.dart';
import 'package:flutter_travel/domain/home/home.dart';
import 'package:flutter_travel/domain/home/home_failure.dart';
import 'package:flutter_travel/domain/home/popular_destination.dart';
import 'package:flutter_travel/domain/home/recommendation.dart';
import 'package:flutter_travel/domain/home/room.dart';
import 'package:flutter_travel/domain/home/search.dart';
import 'package:kt_dart/collection.dart';

import 'home_failure.dart';

abstract class IHomeRepository{
  Stream<Either<HomeFailure, KtList<Search>>> watchAllSearches();
  Stream<Either<HomeFailure, KtList<Room>>> watchAllRooms();
  Stream<Either<HomeFailure, KtList<Recommendation>>> watchAllRecommendations();
  Stream<Either<HomeFailure, KtList<PopularDestination>>> watchAllPopularDestinations();
  Stream<Either<HomeFailure, KtList<Home>>> watchAllHome();
}