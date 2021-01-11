import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_travel/domain/home/home_failure.dart';
import 'package:flutter_travel/domain/home/i_home_repository.dart';
import 'package:flutter_travel/domain/home/popular_destination.dart';
import 'package:flutter_travel/domain/home/recommendation.dart';
import 'package:flutter_travel/domain/home/room.dart';
import 'package:flutter_travel/domain/home/search.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IHomeRepository _homeRepository;
  var receivedLists = 0;
  StreamSubscription<Either<HomeFailure, KtList<Search>>>
      _searchStreamSubscription;
  StreamSubscription<Either<HomeFailure, KtList<Room>>> _roomStreamSubscription;
  StreamSubscription<Either<HomeFailure, KtList<PopularDestination>>>
      _popularDestinationsStreamSubscription;
  StreamSubscription<Either<HomeFailure, KtList<Recommendation>>>
      _recommendationsStreamSubscription;

  HomeBloc(this._homeRepository) : super(HomeState.initial());

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    print('mapEventToState called');
    yield* event.map(watchAllStarted: (e) async* {
      yield const HomeState.loadInProgress();
      await _searchStreamSubscription?.cancel();
      _searchStreamSubscription = _homeRepository.watchAllSearches().listen(
            (failureOrSearches) => add(
              HomeEvent.searchesReceived(failureOrSearches),
            ),
          );
      await _roomStreamSubscription?.cancel();
      _roomStreamSubscription = _homeRepository.watchAllRooms().listen(
            (failureOrRooms) => add(
              HomeEvent.roomsReceived(failureOrRooms),
            ),
          );

      await _popularDestinationsStreamSubscription?.cancel();
      _popularDestinationsStreamSubscription =
          _homeRepository.watchAllPopularDestinations().listen(
                (failureOrPopularDestinations) => add(
                  HomeEvent.popularDestinationsReceived(
                      failureOrPopularDestinations),
                ),
              );

      await _recommendationsStreamSubscription?.cancel();
      _recommendationsStreamSubscription = _homeRepository
          .watchAllRecommendations()
          .listen((failureOrRecommendations) =>
              add(HomeEvent.recommendationsReceived(failureOrRecommendations)));
    }, searchesReceived: (e) async* {
      yield e.failureOrSearches.fold(
        (f) {
          print('$f');
          return HomeState.loadFailure(f);
        },
        (searches) {
          print(searches);
          return HomeState.loadSuccessSearch(searches);
        },
      );
    }, roomsReceived: (e) async* {
      yield e.failureOrRooms.fold(
        (f) {
          print('$f');
          return HomeState.loadFailure(f);
        },
        (rooms) {
          print(rooms);
          return HomeState.loadSuccessRooms(rooms);
        },
      );
    }, popularDestinationsReceived: (e) async* {
      yield e.failureOrPopularDestionations.fold((f) {
        print('$f');
        return HomeState.loadFailure(f);
      }, (popularDestinations) {
        print(popularDestinations);
        return HomeState.loadSuccessPopularDestination(popularDestinations);
      });
    }, recommendationsReceived: (e) async* {
      yield e.failureOrRecommendations.fold((f) {
        print('$f');
        return HomeState.loadFailure(f);
      }, (recommendations) {
        print(recommendations);
        return HomeState.loadSuccessRecommendation(recommendations);
      });
    });
  }
}
