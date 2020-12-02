part of 'home_bloc.dart';

@freezed
abstract class HomeEvent with _$HomeEvent {
  const factory HomeEvent.watchAllStarted() = _WatchAllStarted;
  const factory HomeEvent.searchesReceived(Either<HomeFailure, KtList<Search>> failureOrSearches) = _SearchesReceived;
  const factory HomeEvent.roomsReceived(Either<HomeFailure, KtList<Room>> failureOrRooms) = _RoomsReceived;
  const factory HomeEvent.popularDestinationsReceived(Either<HomeFailure, KtList<PopularDestination>> failureOrPopularDestionations) = _PopularDestionsReceived;
  const factory HomeEvent.recommendationsReceived(Either<HomeFailure, KtList<Recommendation>> failureOrRecommendations) = _RecommendationsReceived;
}
