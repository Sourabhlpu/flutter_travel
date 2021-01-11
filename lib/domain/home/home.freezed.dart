// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$HomeTearOff {
  const _$HomeTearOff();

// ignore: unused_element
  _Home call(
      {@required PopularDestination destination,
      @required Recommendation recommendation,
      @required Room room,
      @required Search search}) {
    return _Home(
      destination: destination,
      recommendation: recommendation,
      room: room,
      search: search,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Home = _$HomeTearOff();

/// @nodoc
mixin _$Home {
  PopularDestination get destination;
  Recommendation get recommendation;
  Room get room;
  Search get search;

  $HomeCopyWith<Home> get copyWith;
}

/// @nodoc
abstract class $HomeCopyWith<$Res> {
  factory $HomeCopyWith(Home value, $Res Function(Home) then) =
      _$HomeCopyWithImpl<$Res>;
  $Res call(
      {PopularDestination destination,
      Recommendation recommendation,
      Room room,
      Search search});

  $PopularDestinationCopyWith<$Res> get destination;
  $RecommendationCopyWith<$Res> get recommendation;
  $RoomCopyWith<$Res> get room;
  $SearchCopyWith<$Res> get search;
}

/// @nodoc
class _$HomeCopyWithImpl<$Res> implements $HomeCopyWith<$Res> {
  _$HomeCopyWithImpl(this._value, this._then);

  final Home _value;
  // ignore: unused_field
  final $Res Function(Home) _then;

  @override
  $Res call({
    Object destination = freezed,
    Object recommendation = freezed,
    Object room = freezed,
    Object search = freezed,
  }) {
    return _then(_value.copyWith(
      destination: destination == freezed
          ? _value.destination
          : destination as PopularDestination,
      recommendation: recommendation == freezed
          ? _value.recommendation
          : recommendation as Recommendation,
      room: room == freezed ? _value.room : room as Room,
      search: search == freezed ? _value.search : search as Search,
    ));
  }

  @override
  $PopularDestinationCopyWith<$Res> get destination {
    if (_value.destination == null) {
      return null;
    }
    return $PopularDestinationCopyWith<$Res>(_value.destination, (value) {
      return _then(_value.copyWith(destination: value));
    });
  }

  @override
  $RecommendationCopyWith<$Res> get recommendation {
    if (_value.recommendation == null) {
      return null;
    }
    return $RecommendationCopyWith<$Res>(_value.recommendation, (value) {
      return _then(_value.copyWith(recommendation: value));
    });
  }

  @override
  $RoomCopyWith<$Res> get room {
    if (_value.room == null) {
      return null;
    }
    return $RoomCopyWith<$Res>(_value.room, (value) {
      return _then(_value.copyWith(room: value));
    });
  }

  @override
  $SearchCopyWith<$Res> get search {
    if (_value.search == null) {
      return null;
    }
    return $SearchCopyWith<$Res>(_value.search, (value) {
      return _then(_value.copyWith(search: value));
    });
  }
}

/// @nodoc
abstract class _$HomeCopyWith<$Res> implements $HomeCopyWith<$Res> {
  factory _$HomeCopyWith(_Home value, $Res Function(_Home) then) =
      __$HomeCopyWithImpl<$Res>;
  @override
  $Res call(
      {PopularDestination destination,
      Recommendation recommendation,
      Room room,
      Search search});

  @override
  $PopularDestinationCopyWith<$Res> get destination;
  @override
  $RecommendationCopyWith<$Res> get recommendation;
  @override
  $RoomCopyWith<$Res> get room;
  @override
  $SearchCopyWith<$Res> get search;
}

/// @nodoc
class __$HomeCopyWithImpl<$Res> extends _$HomeCopyWithImpl<$Res>
    implements _$HomeCopyWith<$Res> {
  __$HomeCopyWithImpl(_Home _value, $Res Function(_Home) _then)
      : super(_value, (v) => _then(v as _Home));

  @override
  _Home get _value => super._value as _Home;

  @override
  $Res call({
    Object destination = freezed,
    Object recommendation = freezed,
    Object room = freezed,
    Object search = freezed,
  }) {
    return _then(_Home(
      destination: destination == freezed
          ? _value.destination
          : destination as PopularDestination,
      recommendation: recommendation == freezed
          ? _value.recommendation
          : recommendation as Recommendation,
      room: room == freezed ? _value.room : room as Room,
      search: search == freezed ? _value.search : search as Search,
    ));
  }
}

/// @nodoc
class _$_Home extends _Home with DiagnosticableTreeMixin {
  const _$_Home(
      {@required this.destination,
      @required this.recommendation,
      @required this.room,
      @required this.search})
      : assert(destination != null),
        assert(recommendation != null),
        assert(room != null),
        assert(search != null),
        super._();

  @override
  final PopularDestination destination;
  @override
  final Recommendation recommendation;
  @override
  final Room room;
  @override
  final Search search;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Home(destination: $destination, recommendation: $recommendation, room: $room, search: $search)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Home'))
      ..add(DiagnosticsProperty('destination', destination))
      ..add(DiagnosticsProperty('recommendation', recommendation))
      ..add(DiagnosticsProperty('room', room))
      ..add(DiagnosticsProperty('search', search));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Home &&
            (identical(other.destination, destination) ||
                const DeepCollectionEquality()
                    .equals(other.destination, destination)) &&
            (identical(other.recommendation, recommendation) ||
                const DeepCollectionEquality()
                    .equals(other.recommendation, recommendation)) &&
            (identical(other.room, room) ||
                const DeepCollectionEquality().equals(other.room, room)) &&
            (identical(other.search, search) ||
                const DeepCollectionEquality().equals(other.search, search)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(destination) ^
      const DeepCollectionEquality().hash(recommendation) ^
      const DeepCollectionEquality().hash(room) ^
      const DeepCollectionEquality().hash(search);

  @override
  _$HomeCopyWith<_Home> get copyWith =>
      __$HomeCopyWithImpl<_Home>(this, _$identity);
}

abstract class _Home extends Home {
  const _Home._() : super._();
  const factory _Home(
      {@required PopularDestination destination,
      @required Recommendation recommendation,
      @required Room room,
      @required Search search}) = _$_Home;

  @override
  PopularDestination get destination;
  @override
  Recommendation get recommendation;
  @override
  Room get room;
  @override
  Search get search;
  @override
  _$HomeCopyWith<_Home> get copyWith;
}
