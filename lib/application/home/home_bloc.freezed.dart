// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

// ignore: unused_element
  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }
}

/// @nodoc
// ignore: unused_element
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;
}

/// @nodoc
class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'HomeEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
  }) {
    assert(watchAllStarted != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
  }) {
    assert(watchAllStarted != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements HomeEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccessSearch loadSuccessSearch(KtList<Search> searches) {
    return _LoadSuccessSearch(
      searches,
    );
  }

// ignore: unused_element
  _LoadSuccessRecommendation loadSuccessRecommendation(
      KtList<Recommendation> recommendations) {
    return _LoadSuccessRecommendation(
      recommendations,
    );
  }

// ignore: unused_element
  _LoadSuccessPopularDestination loadSuccessPopularDestination(
      KtList<PopularDestination> popularDestinations) {
    return _LoadSuccessPopularDestination(
      popularDestinations,
    );
  }

// ignore: unused_element
  _LoadSuccessRooms loadSuccessRooms(KtList<Room> rooms) {
    return _LoadSuccessRooms(
      rooms,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(HomeFailure homeFailure) {
    return _LoadFailure(
      homeFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccessSearch(KtList<Search> searches),
    @required
        Result loadSuccessRecommendation(
            KtList<Recommendation> recommendations),
    @required
        Result loadSuccessPopularDestination(
            KtList<PopularDestination> popularDestinations),
    @required Result loadSuccessRooms(KtList<Room> rooms),
    @required Result loadFailure(HomeFailure homeFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccessSearch(KtList<Search> searches),
    Result loadSuccessRecommendation(KtList<Recommendation> recommendations),
    Result loadSuccessPopularDestination(
        KtList<PopularDestination> popularDestinations),
    Result loadSuccessRooms(KtList<Room> rooms),
    Result loadFailure(HomeFailure homeFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccessSearch(_LoadSuccessSearch value),
    @required
        Result loadSuccessRecommendation(_LoadSuccessRecommendation value),
    @required
        Result loadSuccessPopularDestination(
            _LoadSuccessPopularDestination value),
    @required Result loadSuccessRooms(_LoadSuccessRooms value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccessSearch(_LoadSuccessSearch value),
    Result loadSuccessRecommendation(_LoadSuccessRecommendation value),
    Result loadSuccessPopularDestination(_LoadSuccessPopularDestination value),
    Result loadSuccessRooms(_LoadSuccessRooms value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccessSearch(KtList<Search> searches),
    @required
        Result loadSuccessRecommendation(
            KtList<Recommendation> recommendations),
    @required
        Result loadSuccessPopularDestination(
            KtList<PopularDestination> popularDestinations),
    @required Result loadSuccessRooms(KtList<Room> rooms),
    @required Result loadFailure(HomeFailure homeFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccessSearch != null);
    assert(loadSuccessRecommendation != null);
    assert(loadSuccessPopularDestination != null);
    assert(loadSuccessRooms != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccessSearch(KtList<Search> searches),
    Result loadSuccessRecommendation(KtList<Recommendation> recommendations),
    Result loadSuccessPopularDestination(
        KtList<PopularDestination> popularDestinations),
    Result loadSuccessRooms(KtList<Room> rooms),
    Result loadFailure(HomeFailure homeFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccessSearch(_LoadSuccessSearch value),
    @required
        Result loadSuccessRecommendation(_LoadSuccessRecommendation value),
    @required
        Result loadSuccessPopularDestination(
            _LoadSuccessPopularDestination value),
    @required Result loadSuccessRooms(_LoadSuccessRooms value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccessSearch != null);
    assert(loadSuccessRecommendation != null);
    assert(loadSuccessPopularDestination != null);
    assert(loadSuccessRooms != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccessSearch(_LoadSuccessSearch value),
    Result loadSuccessRecommendation(_LoadSuccessRecommendation value),
    Result loadSuccessPopularDestination(_LoadSuccessPopularDestination value),
    Result loadSuccessRooms(_LoadSuccessRooms value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'HomeState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccessSearch(KtList<Search> searches),
    @required
        Result loadSuccessRecommendation(
            KtList<Recommendation> recommendations),
    @required
        Result loadSuccessPopularDestination(
            KtList<PopularDestination> popularDestinations),
    @required Result loadSuccessRooms(KtList<Room> rooms),
    @required Result loadFailure(HomeFailure homeFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccessSearch != null);
    assert(loadSuccessRecommendation != null);
    assert(loadSuccessPopularDestination != null);
    assert(loadSuccessRooms != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccessSearch(KtList<Search> searches),
    Result loadSuccessRecommendation(KtList<Recommendation> recommendations),
    Result loadSuccessPopularDestination(
        KtList<PopularDestination> popularDestinations),
    Result loadSuccessRooms(KtList<Room> rooms),
    Result loadFailure(HomeFailure homeFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccessSearch(_LoadSuccessSearch value),
    @required
        Result loadSuccessRecommendation(_LoadSuccessRecommendation value),
    @required
        Result loadSuccessPopularDestination(
            _LoadSuccessPopularDestination value),
    @required Result loadSuccessRooms(_LoadSuccessRooms value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccessSearch != null);
    assert(loadSuccessRecommendation != null);
    assert(loadSuccessPopularDestination != null);
    assert(loadSuccessRooms != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccessSearch(_LoadSuccessSearch value),
    Result loadSuccessRecommendation(_LoadSuccessRecommendation value),
    Result loadSuccessPopularDestination(_LoadSuccessPopularDestination value),
    Result loadSuccessRooms(_LoadSuccessRooms value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements HomeState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessSearchCopyWith<$Res> {
  factory _$LoadSuccessSearchCopyWith(
          _LoadSuccessSearch value, $Res Function(_LoadSuccessSearch) then) =
      __$LoadSuccessSearchCopyWithImpl<$Res>;
  $Res call({KtList<Search> searches});
}

/// @nodoc
class __$LoadSuccessSearchCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$LoadSuccessSearchCopyWith<$Res> {
  __$LoadSuccessSearchCopyWithImpl(
      _LoadSuccessSearch _value, $Res Function(_LoadSuccessSearch) _then)
      : super(_value, (v) => _then(v as _LoadSuccessSearch));

  @override
  _LoadSuccessSearch get _value => super._value as _LoadSuccessSearch;

  @override
  $Res call({
    Object searches = freezed,
  }) {
    return _then(_LoadSuccessSearch(
      searches == freezed ? _value.searches : searches as KtList<Search>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccessSearch implements _LoadSuccessSearch {
  const _$_LoadSuccessSearch(this.searches) : assert(searches != null);

  @override
  final KtList<Search> searches;

  @override
  String toString() {
    return 'HomeState.loadSuccessSearch(searches: $searches)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccessSearch &&
            (identical(other.searches, searches) ||
                const DeepCollectionEquality()
                    .equals(other.searches, searches)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(searches);

  @override
  _$LoadSuccessSearchCopyWith<_LoadSuccessSearch> get copyWith =>
      __$LoadSuccessSearchCopyWithImpl<_LoadSuccessSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccessSearch(KtList<Search> searches),
    @required
        Result loadSuccessRecommendation(
            KtList<Recommendation> recommendations),
    @required
        Result loadSuccessPopularDestination(
            KtList<PopularDestination> popularDestinations),
    @required Result loadSuccessRooms(KtList<Room> rooms),
    @required Result loadFailure(HomeFailure homeFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccessSearch != null);
    assert(loadSuccessRecommendation != null);
    assert(loadSuccessPopularDestination != null);
    assert(loadSuccessRooms != null);
    assert(loadFailure != null);
    return loadSuccessSearch(searches);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccessSearch(KtList<Search> searches),
    Result loadSuccessRecommendation(KtList<Recommendation> recommendations),
    Result loadSuccessPopularDestination(
        KtList<PopularDestination> popularDestinations),
    Result loadSuccessRooms(KtList<Room> rooms),
    Result loadFailure(HomeFailure homeFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccessSearch != null) {
      return loadSuccessSearch(searches);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccessSearch(_LoadSuccessSearch value),
    @required
        Result loadSuccessRecommendation(_LoadSuccessRecommendation value),
    @required
        Result loadSuccessPopularDestination(
            _LoadSuccessPopularDestination value),
    @required Result loadSuccessRooms(_LoadSuccessRooms value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccessSearch != null);
    assert(loadSuccessRecommendation != null);
    assert(loadSuccessPopularDestination != null);
    assert(loadSuccessRooms != null);
    assert(loadFailure != null);
    return loadSuccessSearch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccessSearch(_LoadSuccessSearch value),
    Result loadSuccessRecommendation(_LoadSuccessRecommendation value),
    Result loadSuccessPopularDestination(_LoadSuccessPopularDestination value),
    Result loadSuccessRooms(_LoadSuccessRooms value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccessSearch != null) {
      return loadSuccessSearch(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccessSearch implements HomeState {
  const factory _LoadSuccessSearch(KtList<Search> searches) =
      _$_LoadSuccessSearch;

  KtList<Search> get searches;
  _$LoadSuccessSearchCopyWith<_LoadSuccessSearch> get copyWith;
}

/// @nodoc
abstract class _$LoadSuccessRecommendationCopyWith<$Res> {
  factory _$LoadSuccessRecommendationCopyWith(_LoadSuccessRecommendation value,
          $Res Function(_LoadSuccessRecommendation) then) =
      __$LoadSuccessRecommendationCopyWithImpl<$Res>;
  $Res call({KtList<Recommendation> recommendations});
}

/// @nodoc
class __$LoadSuccessRecommendationCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$LoadSuccessRecommendationCopyWith<$Res> {
  __$LoadSuccessRecommendationCopyWithImpl(_LoadSuccessRecommendation _value,
      $Res Function(_LoadSuccessRecommendation) _then)
      : super(_value, (v) => _then(v as _LoadSuccessRecommendation));

  @override
  _LoadSuccessRecommendation get _value =>
      super._value as _LoadSuccessRecommendation;

  @override
  $Res call({
    Object recommendations = freezed,
  }) {
    return _then(_LoadSuccessRecommendation(
      recommendations == freezed
          ? _value.recommendations
          : recommendations as KtList<Recommendation>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccessRecommendation implements _LoadSuccessRecommendation {
  const _$_LoadSuccessRecommendation(this.recommendations)
      : assert(recommendations != null);

  @override
  final KtList<Recommendation> recommendations;

  @override
  String toString() {
    return 'HomeState.loadSuccessRecommendation(recommendations: $recommendations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccessRecommendation &&
            (identical(other.recommendations, recommendations) ||
                const DeepCollectionEquality()
                    .equals(other.recommendations, recommendations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(recommendations);

  @override
  _$LoadSuccessRecommendationCopyWith<_LoadSuccessRecommendation>
      get copyWith =>
          __$LoadSuccessRecommendationCopyWithImpl<_LoadSuccessRecommendation>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccessSearch(KtList<Search> searches),
    @required
        Result loadSuccessRecommendation(
            KtList<Recommendation> recommendations),
    @required
        Result loadSuccessPopularDestination(
            KtList<PopularDestination> popularDestinations),
    @required Result loadSuccessRooms(KtList<Room> rooms),
    @required Result loadFailure(HomeFailure homeFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccessSearch != null);
    assert(loadSuccessRecommendation != null);
    assert(loadSuccessPopularDestination != null);
    assert(loadSuccessRooms != null);
    assert(loadFailure != null);
    return loadSuccessRecommendation(recommendations);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccessSearch(KtList<Search> searches),
    Result loadSuccessRecommendation(KtList<Recommendation> recommendations),
    Result loadSuccessPopularDestination(
        KtList<PopularDestination> popularDestinations),
    Result loadSuccessRooms(KtList<Room> rooms),
    Result loadFailure(HomeFailure homeFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccessRecommendation != null) {
      return loadSuccessRecommendation(recommendations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccessSearch(_LoadSuccessSearch value),
    @required
        Result loadSuccessRecommendation(_LoadSuccessRecommendation value),
    @required
        Result loadSuccessPopularDestination(
            _LoadSuccessPopularDestination value),
    @required Result loadSuccessRooms(_LoadSuccessRooms value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccessSearch != null);
    assert(loadSuccessRecommendation != null);
    assert(loadSuccessPopularDestination != null);
    assert(loadSuccessRooms != null);
    assert(loadFailure != null);
    return loadSuccessRecommendation(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccessSearch(_LoadSuccessSearch value),
    Result loadSuccessRecommendation(_LoadSuccessRecommendation value),
    Result loadSuccessPopularDestination(_LoadSuccessPopularDestination value),
    Result loadSuccessRooms(_LoadSuccessRooms value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccessRecommendation != null) {
      return loadSuccessRecommendation(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccessRecommendation implements HomeState {
  const factory _LoadSuccessRecommendation(
      KtList<Recommendation> recommendations) = _$_LoadSuccessRecommendation;

  KtList<Recommendation> get recommendations;
  _$LoadSuccessRecommendationCopyWith<_LoadSuccessRecommendation> get copyWith;
}

/// @nodoc
abstract class _$LoadSuccessPopularDestinationCopyWith<$Res> {
  factory _$LoadSuccessPopularDestinationCopyWith(
          _LoadSuccessPopularDestination value,
          $Res Function(_LoadSuccessPopularDestination) then) =
      __$LoadSuccessPopularDestinationCopyWithImpl<$Res>;
  $Res call({KtList<PopularDestination> popularDestinations});
}

/// @nodoc
class __$LoadSuccessPopularDestinationCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$LoadSuccessPopularDestinationCopyWith<$Res> {
  __$LoadSuccessPopularDestinationCopyWithImpl(
      _LoadSuccessPopularDestination _value,
      $Res Function(_LoadSuccessPopularDestination) _then)
      : super(_value, (v) => _then(v as _LoadSuccessPopularDestination));

  @override
  _LoadSuccessPopularDestination get _value =>
      super._value as _LoadSuccessPopularDestination;

  @override
  $Res call({
    Object popularDestinations = freezed,
  }) {
    return _then(_LoadSuccessPopularDestination(
      popularDestinations == freezed
          ? _value.popularDestinations
          : popularDestinations as KtList<PopularDestination>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccessPopularDestination
    implements _LoadSuccessPopularDestination {
  const _$_LoadSuccessPopularDestination(this.popularDestinations)
      : assert(popularDestinations != null);

  @override
  final KtList<PopularDestination> popularDestinations;

  @override
  String toString() {
    return 'HomeState.loadSuccessPopularDestination(popularDestinations: $popularDestinations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccessPopularDestination &&
            (identical(other.popularDestinations, popularDestinations) ||
                const DeepCollectionEquality()
                    .equals(other.popularDestinations, popularDestinations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(popularDestinations);

  @override
  _$LoadSuccessPopularDestinationCopyWith<_LoadSuccessPopularDestination>
      get copyWith => __$LoadSuccessPopularDestinationCopyWithImpl<
          _LoadSuccessPopularDestination>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccessSearch(KtList<Search> searches),
    @required
        Result loadSuccessRecommendation(
            KtList<Recommendation> recommendations),
    @required
        Result loadSuccessPopularDestination(
            KtList<PopularDestination> popularDestinations),
    @required Result loadSuccessRooms(KtList<Room> rooms),
    @required Result loadFailure(HomeFailure homeFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccessSearch != null);
    assert(loadSuccessRecommendation != null);
    assert(loadSuccessPopularDestination != null);
    assert(loadSuccessRooms != null);
    assert(loadFailure != null);
    return loadSuccessPopularDestination(popularDestinations);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccessSearch(KtList<Search> searches),
    Result loadSuccessRecommendation(KtList<Recommendation> recommendations),
    Result loadSuccessPopularDestination(
        KtList<PopularDestination> popularDestinations),
    Result loadSuccessRooms(KtList<Room> rooms),
    Result loadFailure(HomeFailure homeFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccessPopularDestination != null) {
      return loadSuccessPopularDestination(popularDestinations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccessSearch(_LoadSuccessSearch value),
    @required
        Result loadSuccessRecommendation(_LoadSuccessRecommendation value),
    @required
        Result loadSuccessPopularDestination(
            _LoadSuccessPopularDestination value),
    @required Result loadSuccessRooms(_LoadSuccessRooms value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccessSearch != null);
    assert(loadSuccessRecommendation != null);
    assert(loadSuccessPopularDestination != null);
    assert(loadSuccessRooms != null);
    assert(loadFailure != null);
    return loadSuccessPopularDestination(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccessSearch(_LoadSuccessSearch value),
    Result loadSuccessRecommendation(_LoadSuccessRecommendation value),
    Result loadSuccessPopularDestination(_LoadSuccessPopularDestination value),
    Result loadSuccessRooms(_LoadSuccessRooms value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccessPopularDestination != null) {
      return loadSuccessPopularDestination(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccessPopularDestination implements HomeState {
  const factory _LoadSuccessPopularDestination(
          KtList<PopularDestination> popularDestinations) =
      _$_LoadSuccessPopularDestination;

  KtList<PopularDestination> get popularDestinations;
  _$LoadSuccessPopularDestinationCopyWith<_LoadSuccessPopularDestination>
      get copyWith;
}

/// @nodoc
abstract class _$LoadSuccessRoomsCopyWith<$Res> {
  factory _$LoadSuccessRoomsCopyWith(
          _LoadSuccessRooms value, $Res Function(_LoadSuccessRooms) then) =
      __$LoadSuccessRoomsCopyWithImpl<$Res>;
  $Res call({KtList<Room> rooms});
}

/// @nodoc
class __$LoadSuccessRoomsCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$LoadSuccessRoomsCopyWith<$Res> {
  __$LoadSuccessRoomsCopyWithImpl(
      _LoadSuccessRooms _value, $Res Function(_LoadSuccessRooms) _then)
      : super(_value, (v) => _then(v as _LoadSuccessRooms));

  @override
  _LoadSuccessRooms get _value => super._value as _LoadSuccessRooms;

  @override
  $Res call({
    Object rooms = freezed,
  }) {
    return _then(_LoadSuccessRooms(
      rooms == freezed ? _value.rooms : rooms as KtList<Room>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccessRooms implements _LoadSuccessRooms {
  const _$_LoadSuccessRooms(this.rooms) : assert(rooms != null);

  @override
  final KtList<Room> rooms;

  @override
  String toString() {
    return 'HomeState.loadSuccessRooms(rooms: $rooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccessRooms &&
            (identical(other.rooms, rooms) ||
                const DeepCollectionEquality().equals(other.rooms, rooms)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(rooms);

  @override
  _$LoadSuccessRoomsCopyWith<_LoadSuccessRooms> get copyWith =>
      __$LoadSuccessRoomsCopyWithImpl<_LoadSuccessRooms>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccessSearch(KtList<Search> searches),
    @required
        Result loadSuccessRecommendation(
            KtList<Recommendation> recommendations),
    @required
        Result loadSuccessPopularDestination(
            KtList<PopularDestination> popularDestinations),
    @required Result loadSuccessRooms(KtList<Room> rooms),
    @required Result loadFailure(HomeFailure homeFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccessSearch != null);
    assert(loadSuccessRecommendation != null);
    assert(loadSuccessPopularDestination != null);
    assert(loadSuccessRooms != null);
    assert(loadFailure != null);
    return loadSuccessRooms(rooms);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccessSearch(KtList<Search> searches),
    Result loadSuccessRecommendation(KtList<Recommendation> recommendations),
    Result loadSuccessPopularDestination(
        KtList<PopularDestination> popularDestinations),
    Result loadSuccessRooms(KtList<Room> rooms),
    Result loadFailure(HomeFailure homeFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccessRooms != null) {
      return loadSuccessRooms(rooms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccessSearch(_LoadSuccessSearch value),
    @required
        Result loadSuccessRecommendation(_LoadSuccessRecommendation value),
    @required
        Result loadSuccessPopularDestination(
            _LoadSuccessPopularDestination value),
    @required Result loadSuccessRooms(_LoadSuccessRooms value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccessSearch != null);
    assert(loadSuccessRecommendation != null);
    assert(loadSuccessPopularDestination != null);
    assert(loadSuccessRooms != null);
    assert(loadFailure != null);
    return loadSuccessRooms(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccessSearch(_LoadSuccessSearch value),
    Result loadSuccessRecommendation(_LoadSuccessRecommendation value),
    Result loadSuccessPopularDestination(_LoadSuccessPopularDestination value),
    Result loadSuccessRooms(_LoadSuccessRooms value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccessRooms != null) {
      return loadSuccessRooms(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccessRooms implements HomeState {
  const factory _LoadSuccessRooms(KtList<Room> rooms) = _$_LoadSuccessRooms;

  KtList<Room> get rooms;
  _$LoadSuccessRoomsCopyWith<_LoadSuccessRooms> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({HomeFailure homeFailure});

  $HomeFailureCopyWith<$Res> get homeFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object homeFailure = freezed,
  }) {
    return _then(_LoadFailure(
      homeFailure == freezed ? _value.homeFailure : homeFailure as HomeFailure,
    ));
  }

  @override
  $HomeFailureCopyWith<$Res> get homeFailure {
    if (_value.homeFailure == null) {
      return null;
    }
    return $HomeFailureCopyWith<$Res>(_value.homeFailure, (value) {
      return _then(_value.copyWith(homeFailure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.homeFailure) : assert(homeFailure != null);

  @override
  final HomeFailure homeFailure;

  @override
  String toString() {
    return 'HomeState.loadFailure(homeFailure: $homeFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.homeFailure, homeFailure) ||
                const DeepCollectionEquality()
                    .equals(other.homeFailure, homeFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(homeFailure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccessSearch(KtList<Search> searches),
    @required
        Result loadSuccessRecommendation(
            KtList<Recommendation> recommendations),
    @required
        Result loadSuccessPopularDestination(
            KtList<PopularDestination> popularDestinations),
    @required Result loadSuccessRooms(KtList<Room> rooms),
    @required Result loadFailure(HomeFailure homeFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccessSearch != null);
    assert(loadSuccessRecommendation != null);
    assert(loadSuccessPopularDestination != null);
    assert(loadSuccessRooms != null);
    assert(loadFailure != null);
    return loadFailure(homeFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccessSearch(KtList<Search> searches),
    Result loadSuccessRecommendation(KtList<Recommendation> recommendations),
    Result loadSuccessPopularDestination(
        KtList<PopularDestination> popularDestinations),
    Result loadSuccessRooms(KtList<Room> rooms),
    Result loadFailure(HomeFailure homeFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(homeFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccessSearch(_LoadSuccessSearch value),
    @required
        Result loadSuccessRecommendation(_LoadSuccessRecommendation value),
    @required
        Result loadSuccessPopularDestination(
            _LoadSuccessPopularDestination value),
    @required Result loadSuccessRooms(_LoadSuccessRooms value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccessSearch != null);
    assert(loadSuccessRecommendation != null);
    assert(loadSuccessPopularDestination != null);
    assert(loadSuccessRooms != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccessSearch(_LoadSuccessSearch value),
    Result loadSuccessRecommendation(_LoadSuccessRecommendation value),
    Result loadSuccessPopularDestination(_LoadSuccessPopularDestination value),
    Result loadSuccessRooms(_LoadSuccessRooms value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements HomeState {
  const factory _LoadFailure(HomeFailure homeFailure) = _$_LoadFailure;

  HomeFailure get homeFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
