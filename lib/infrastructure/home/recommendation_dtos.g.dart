// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendation_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecommendationDto _$_$_RecommendationDtoFromJson(Map<String, dynamic> json) {
  return _$_RecommendationDto(
    imageUrl: json['imageUrl'] as String,
    title: json['title'] as String,
    type: json['type'] as String,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$_$_RecommendationDtoToJson(
        _$_RecommendationDto instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'type': instance.type,
      'description': instance.description,
    };
