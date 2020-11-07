// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'popular_destination_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PopularDestinationDto _$PopularDestinationDtoFromJson(
    Map<String, dynamic> json) {
  return _PopularDestinationDto.fromJson(json);
}

class _$PopularDestinationDtoTearOff {
  const _$PopularDestinationDtoTearOff();

  _PopularDestinationDto call(
      {@JsonKey(ignore: true) String id,
      @required String imageUrl,
      @required String title}) {
    return _PopularDestinationDto(
      id: id,
      imageUrl: imageUrl,
      title: title,
    );
  }
}

// ignore: unused_element
const $PopularDestinationDto = _$PopularDestinationDtoTearOff();

mixin _$PopularDestinationDto {
  @JsonKey(ignore: true)
  String get id;
  String get imageUrl;
  String get title;

  Map<String, dynamic> toJson();
  $PopularDestinationDtoCopyWith<PopularDestinationDto> get copyWith;
}

abstract class $PopularDestinationDtoCopyWith<$Res> {
  factory $PopularDestinationDtoCopyWith(PopularDestinationDto value,
          $Res Function(PopularDestinationDto) then) =
      _$PopularDestinationDtoCopyWithImpl<$Res>;
  $Res call({@JsonKey(ignore: true) String id, String imageUrl, String title});
}

class _$PopularDestinationDtoCopyWithImpl<$Res>
    implements $PopularDestinationDtoCopyWith<$Res> {
  _$PopularDestinationDtoCopyWithImpl(this._value, this._then);

  final PopularDestinationDto _value;
  // ignore: unused_field
  final $Res Function(PopularDestinationDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object imageUrl = freezed,
    Object title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      title: title == freezed ? _value.title : title as String,
    ));
  }
}

abstract class _$PopularDestinationDtoCopyWith<$Res>
    implements $PopularDestinationDtoCopyWith<$Res> {
  factory _$PopularDestinationDtoCopyWith(_PopularDestinationDto value,
          $Res Function(_PopularDestinationDto) then) =
      __$PopularDestinationDtoCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(ignore: true) String id, String imageUrl, String title});
}

class __$PopularDestinationDtoCopyWithImpl<$Res>
    extends _$PopularDestinationDtoCopyWithImpl<$Res>
    implements _$PopularDestinationDtoCopyWith<$Res> {
  __$PopularDestinationDtoCopyWithImpl(_PopularDestinationDto _value,
      $Res Function(_PopularDestinationDto) _then)
      : super(_value, (v) => _then(v as _PopularDestinationDto));

  @override
  _PopularDestinationDto get _value => super._value as _PopularDestinationDto;

  @override
  $Res call({
    Object id = freezed,
    Object imageUrl = freezed,
    Object title = freezed,
  }) {
    return _then(_PopularDestinationDto(
      id: id == freezed ? _value.id : id as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      title: title == freezed ? _value.title : title as String,
    ));
  }
}

@JsonSerializable()
class _$_PopularDestinationDto extends _PopularDestinationDto
    with DiagnosticableTreeMixin {
  const _$_PopularDestinationDto(
      {@JsonKey(ignore: true) this.id,
      @required this.imageUrl,
      @required this.title})
      : assert(imageUrl != null),
        assert(title != null),
        super._();

  factory _$_PopularDestinationDto.fromJson(Map<String, dynamic> json) =>
      _$_$_PopularDestinationDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String imageUrl;
  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PopularDestinationDto(id: $id, imageUrl: $imageUrl, title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PopularDestinationDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PopularDestinationDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(title);

  @override
  _$PopularDestinationDtoCopyWith<_PopularDestinationDto> get copyWith =>
      __$PopularDestinationDtoCopyWithImpl<_PopularDestinationDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PopularDestinationDtoToJson(this);
  }
}

abstract class _PopularDestinationDto extends PopularDestinationDto {
  const _PopularDestinationDto._() : super._();
  const factory _PopularDestinationDto(
      {@JsonKey(ignore: true) String id,
      @required String imageUrl,
      @required String title}) = _$_PopularDestinationDto;

  factory _PopularDestinationDto.fromJson(Map<String, dynamic> json) =
      _$_PopularDestinationDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get imageUrl;
  @override
  String get title;
  @override
  _$PopularDestinationDtoCopyWith<_PopularDestinationDto> get copyWith;
}
