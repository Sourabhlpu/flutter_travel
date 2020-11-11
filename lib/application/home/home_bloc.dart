import 'dart:async';

import 'package:bloc/bloc.dart';
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

  HomeBloc(this._homeRepository) : super(HomeState.initial());

  @override
  Stream<HomeState> mapEventToState(HomeEvent event,) async* {
    yield* event.map(watchAllStarted: (e) async* {
      yield const HomeState.loadInProgress();
      _homeRepository.watchAllSearches().listen((failureOrSearches) async* {
        yield failureOrSearches.fold((f) => HomeState.loadFailure(f),
                (searches) => HomeState.loadSuccessSearch(searches));
      });
      _homeRepository.watchAllRooms().listen((failureOrRooms) async* {
        yield failureOrRooms.fold((f) => HomeState.loadFailure(f),
                (rooms) => HomeState.loadSuccessRooms(rooms));
      });

      _homeRepository.watchAllPopularDestinations().listen((
          failureOrPopularDestinations) async* {
        yield failureOrPopularDestinations.fold((f) => HomeState.loadFailure(f),
                (popularDestinations) =>
                HomeState.loadSuccessPopularDestination(popularDestinations));
      });

      _homeRepository.watchAllRecommendations().listen((
          failureOrRecommendations) async* {
        yield failureOrRecommendations.fold((f) => HomeState.loadFailure(f),
                (failureOrRecommendations) =>
                HomeState.loadSuccessRecommendation(failureOrRecommendations));
      });
    });
  }
}