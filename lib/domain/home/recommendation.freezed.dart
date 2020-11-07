// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'recommendation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RecommendationTearOff {
  const _$RecommendationTearOff();

// ignore: unused_element
  _Recommendation call(
      {@required UniqueId id,
      @required ImageUrl imageUrl,
      @required RecommendationTitle title,
      @required RecommendationType type,
      @required RecommendationDescription description}) {
    return _Recommendation(
      id: id,
      imageUrl: imageUrl,
      title: title,
      type: type,
      description: description,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Recommendation = _$RecommendationTearOff();

/// @nodoc
mixin _$Recommendation {
  UniqueId get id;
  ImageUrl get imageUrl;
  RecommendationTitle get title;
  RecommendationType get type;
  RecommendationDescription get description;

  $RecommendationCopyWith<Recommendation> get copyWith;
}

/// @nodoc
abstract class $RecommendationCopyWith<$Res> {
  factory $RecommendationCopyWith(
          Recommendation value, $Res Function(Recommendation) then) =
      _$RecommendationCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      ImageUrl imageUrl,
      RecommendationTitle title,
      RecommendationType type,
      RecommendationDescription description});
}

/// @nodoc
class _$RecommendationCopyWithImpl<$Res>
    implements $RecommendationCopyWith<$Res> {
  _$RecommendationCopyWithImpl(this._value, this._then);

  final Recommendation _value;
  // ignore: unused_field
  final $Res Function(Recommendation) _then;

  @override
  $Res call({
    Object id = freezed,
    Object imageUrl = freezed,
    Object title = freezed,
    Object type = freezed,
    Object description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as ImageUrl,
      title: title == freezed ? _value.title : title as RecommendationTitle,
      type: type == freezed ? _value.type : type as RecommendationType,
      description: description == freezed
          ? _value.description
          : description as RecommendationDescription,
    ));
  }
}

/// @nodoc
abstract class _$RecommendationCopyWith<$Res>
    implements $RecommendationCopyWith<$Res> {
  factory _$RecommendationCopyWith(
          _Recommendation value, $Res Function(_Recommendation) then) =
      __$RecommendationCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      ImageUrl imageUrl,
      RecommendationTitle title,
      RecommendationType type,
      RecommendationDescription description});
}

/// @nodoc
class __$RecommendationCopyWithImpl<$Res>
    extends _$RecommendationCopyWithImpl<$Res>
    implements _$RecommendationCopyWith<$Res> {
  __$RecommendationCopyWithImpl(
      _Recommendation _value, $Res Function(_Recommendation) _then)
      : super(_value, (v) => _then(v as _Recommendation));

  @override
  _Recommendation get _value => super._value as _Recommendation;

  @override
  $Res call({
    Object id = freezed,
    Object imageUrl = freezed,
    Object title = freezed,
    Object type = freezed,
    Object description = freezed,
  }) {
    return _then(_Recommendation(
      id: id == freezed ? _value.id : id as UniqueId,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as ImageUrl,
      title: title == freezed ? _value.title : title as RecommendationTitle,
      type: type == freezed ? _value.type : type as RecommendationType,
      description: description == freezed
          ? _value.description
          : description as RecommendationDescription,
    ));
  }
}

/// @nodoc
class _$_Recommendation extends _Recommendation {
  const _$_Recommendation(
      {@required this.id,
      @required this.imageUrl,
      @required this.title,
      @required this.type,
      @required this.description})
      : assert(id != null),
        assert(imageUrl != null),
        assert(title != null),
        assert(type != null),
        assert(description != null),
        super._();

  @override
  final UniqueId id;
  @override
  final ImageUrl imageUrl;
  @override
  final RecommendationTitle title;
  @override
  final RecommendationType type;
  @override
  final RecommendationDescription description;

  @override
  String toString() {
    return 'Recommendation(id: $id, imageUrl: $imageUrl, title: $title, type: $type, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Recommendation &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(description);

  @override
  _$RecommendationCopyWith<_Recommendation> get copyWith =>
      __$RecommendationCopyWithImpl<_Recommendation>(this, _$identity);
}

abstract class _Recommendation extends Recommendation {
  const _Recommendation._() : super._();
  const factory _Recommendation(
      {@required UniqueId id,
      @required ImageUrl imageUrl,
      @required RecommendationTitle title,
      @required RecommendationType type,
      @required RecommendationDescription description}) = _$_Recommendation;

  @override
  UniqueId get id;
  @override
  ImageUrl get imageUrl;
  @override
  RecommendationTitle get title;
  @override
  RecommendationType get type;
  @override
  RecommendationDescription get description;
  @override
  _$RecommendationCopyWith<_Recommendation> get copyWith;
}
