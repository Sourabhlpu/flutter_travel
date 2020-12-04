import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_travel/domain/home/home_failure.dart';
import 'package:flutter_travel/domain/home/i_home_repository.dart';
import 'package:flutter_travel/domain/home/popular_destination.dart';
import 'package:flutter_travel/domain/home/recommendation.dart';
import 'package:flutter_travel/domain/home/room.dart';
import 'package:flutter_travel/domain/home/search.dart';
import 'package:flutter_travel/infrastructure/home/popular_destination_dtos.dart';
import 'package:flutter_travel/infrastructure/home/recommendation_dtos.dart';
import 'package:flutter_travel/infrastructure/home/room_dtos.dart';
import 'package:flutter_travel/infrastructure/home/search_dtos.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:flutter_travel/infrastructure/core/firestore_helper.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IHomeRepository)
class HomeRepository implements IHomeRepository {
  final FirebaseFirestore _firestore;

  HomeRepository(this._firestore);

  @override
  Stream<Either<HomeFailure, KtList<PopularDestination>>>
      watchAllPopularDestinations() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.popularDestinationCollection
        .snapshots()
        .map(
          (snapshot) => right<HomeFailure, KtList<PopularDestination>>(
            snapshot.docs
                .map((doc) =>
                    PopularDestinationDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.code.contains('permission-denied')) {
        return left(const HomeFailure.insufficientPermission());
      } else {
        return left(const HomeFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<HomeFailure, KtList<Recommendation>>>
      watchAllRecommendations() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.recommendationsCollection
        .snapshots()
        .map((snapshot) => right<HomeFailure, KtList<Recommendation>>(
              snapshot.docs
                  .map((doc) => RecommendationDto.fromFirestore(doc).toDomain())
                  .toImmutableList(),
            ))
        .onErrorReturnWith((error) {
      if (error is FirebaseException &&
          error.code.contains('permission-denied')) {
        return left(const HomeFailure.insufficientPermission());
      } else {
        return left(const HomeFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<HomeFailure, KtList<Room>>> watchAllRooms() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.roomsCollection
        .snapshots()
        .map((snapshots) => right<HomeFailure, KtList<Room>>(
              snapshots.docs
                  .map((doc) => RoomDto.fromFirestore(doc).toDomain())
                  .toImmutableList(),
            ))
        .onErrorReturnWith((error) {
      if (error is FirebaseException &&
          error.code.contains('permission-denied')) {
        return left(const HomeFailure.insufficientPermission());
      } else {
        return left(const HomeFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<HomeFailure, KtList<Search>>> watchAllSearches() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.searchCollection
        .snapshots()
        .map(
          (snapshots) => right<HomeFailure, KtList<Search>>(
            snapshots.docs
                .map((doc) => SearchDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((error) {
      if (error is FirebaseException &&
          error.code.contains('permission-denied')) {
        return left(const HomeFailure.insufficientPermission());
      } else {
        return left(const HomeFailure.unexpected());
      }
    });
  }
}
