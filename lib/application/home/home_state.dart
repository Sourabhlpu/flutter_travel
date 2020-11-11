part of 'home_bloc.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loadInProgress() = _LoadInProgress;
  const factory HomeState.loadSuccessSearch(KtList<Search> searches) = _LoadSuccessSearch;
  const factory HomeState.loadSuccessRecommendation(KtList<Recommendation> recommendations) = _LoadSuccessRecommendation;
  const factory HomeState.loadSuccessPopularDestination(KtList<PopularDestination> popularDestinations) = _LoadSuccessPopularDestination;
  const factory HomeState.loadSuccessRooms(KtList<Room> rooms) = _LoadSuccessRooms;
  const factory HomeState.loadFailure(HomeFailure homeFailure) = _LoadFailure;
}
