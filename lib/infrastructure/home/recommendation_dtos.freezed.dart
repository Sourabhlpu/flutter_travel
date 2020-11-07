// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'recommendation_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RecommendationDto _$RecommendationDtoFromJson(Map<String, dynamic> json) {
  return _RecommendationDto.fromJson(json);
}

class _$RecommendationDtoTearOff {
  const _$RecommendationDtoTearOff();

  _RecommendationDto call(
      {@JsonKey(ignore: true) String id,
      @required String imageUrl,
      @required String title,
      @required String type,
      @required String description}) {
    return _RecommendationDto(
      id: id,
      imageUrl: imageUrl,
      title: title,
      type: type,
      description: description,
    );
  }
}

// ignore: unused_element
const $RecommendationDto = _$RecommendationDtoTearOff();

mixin _$RecommendationDto {
  @JsonKey(ignore: true)
  String get id;
  String get imageUrl;
  String get title;
  String get type;
  String get description;

  Map<String, dynamic> toJson();
  $RecommendationDtoCopyWith<RecommendationDto> get copyWith;
}

abstract class $RecommendationDtoCopyWith<$Res> {
  factory $RecommendationDtoCopyWith(
          RecommendationDto value, $Res Function(RecommendationDto) then) =
      _$RecommendationDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String imageUrl,
      String title,
      String type,
      String description});
}

class _$RecommendationDtoCopyWithImpl<$Res>
    implements $RecommendationDtoCopyWith<$Res> {
  _$RecommendationDtoCopyWithImpl(this._value, this._then);

  final RecommendationDto _value;
  // ignore: unused_field
  final $Res Function(RecommendationDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object imageUrl = freezed,
    Object title = freezed,
    Object type = freezed,
    Object description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      title: title == freezed ? _value.title : title as String,
      type: type == freezed ? _value.type : type as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

abstract class _$RecommendationDtoCopyWith<$Res>
    implements $RecommendationDtoCopyWith<$Res> {
  factory _$RecommendationDtoCopyWith(
          _RecommendationDto value, $Res Function(_RecommendationDto) then) =
      __$RecommendationDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String imageUrl,
      String title,
      String type,
      String description});
}

class __$RecommendationDtoCopyWithImpl<$Res>
    extends _$RecommendationDtoCopyWithImpl<$Res>
    implements _$RecommendationDtoCopyWith<$Res> {
  __$RecommendationDtoCopyWithImpl(
      _RecommendationDto _value, $Res Function(_RecommendationDto) _then)
      : super(_value, (v) => _then(v as _RecommendationDto));

  @override
  _RecommendationDto get _value => super._value as _RecommendationDto;

  @override
  $Res call({
    Object id = freezed,
    Object imageUrl = freezed,
    Object title = freezed,
    Object type = freezed,
    Object description = freezed,
  }) {
    return _then(_RecommendationDto(
      id: id == freezed ? _value.id : id as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      title: title == freezed ? _value.title : title as String,
      type: type == freezed ? _value.type : type as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

@JsonSerializable()
class _$_RecommendationDto extends _RecommendationDto
    with DiagnosticableTreeMixin {
  const _$_RecommendationDto(
      {@JsonKey(ignore: true) this.id,
      @required this.imageUrl,
      @required this.title,
      @required this.type,
      @required this.description})
      : assert(imageUrl != null),
        assert(title != null),
        assert(type != null),
        assert(description != null),
        super._();

  factory _$_RecommendationDto.fromJson(Map<String, dynamic> json) =>
      _$_$_RecommendationDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String imageUrl;
  @override
  final String title;
  @override
  final String type;
  @override
  final String description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecommendationDto(id: $id, imageUrl: $imageUrl, title: $title, type: $type, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecommendationDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RecommendationDto &&
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
  _$RecommendationDtoCopyWith<_RecommendationDto> get copyWith =>
      __$RecommendationDtoCopyWithImpl<_RecommendationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RecommendationDtoToJson(this);
  }
}

abstract class _RecommendationDto extends RecommendationDto {
  const _RecommendationDto._() : super._();
  const factory _RecommendationDto(
      {@JsonKey(ignore: true) String id,
      @required String imageUrl,
      @required String title,
      @required String type,
      @required String description}) = _$_RecommendationDto;

  factory _RecommendationDto.fromJson(Map<String, dynamic> json) =
      _$_RecommendationDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get imageUrl;
  @override
  String get title;
  @override
  String get type;
  @override
  String get description;
  @override
  _$RecommendationDtoCopyWith<_RecommendationDto> get copyWith;
}
