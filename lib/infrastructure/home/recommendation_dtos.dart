import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travel/domain/core/value_objects.dart';
import 'package:flutter_travel/domain/home/recommendation.dart';
import 'package:flutter_travel/domain/home/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recommendation_dtos.g.dart';
part 'recommendation_dtos.freezed.dart';

@freezed
abstract class RecommendationDto implements _$RecommendationDto {
  const RecommendationDto._();
  const factory RecommendationDto({
    @JsonKey(ignore: true) String id,
    @required String imageUrl,
    @required String title,
    @required String type,
    @required String description,
  }) = _RecommendationDto;


  factory RecommendationDto.fromDomain(Recommendation recommendation) {
    return RecommendationDto(
        id: recommendation.id.getOrCrash(),
        imageUrl: recommendation.imageUrl.getOrCrash(),
        title: recommendation.title.getOrCrash(),
        type: recommendation.type.getOrCrash(),
        description: recommendation.description.getOrCrash(),
    );
  }
  Recommendation toDomain(){
    return Recommendation(
        id: UniqueId.fromUniqueString(id),
        imageUrl: ImageUrl(imageUrl),
        title: RecommendationTitle(title),
        type: RecommendationType(type),
      description: RecommendationDescription(description)
    );
  }
  factory RecommendationDto.fromJson(Map<String, dynamic> json) =>
      _$RecommendationDtoFromJson(json);

  factory RecommendationDto.fromFirestore(DocumentSnapshot doc) {
    return RecommendationDto.fromJson(doc.data()).copyWith(id: doc.documentID);
  }
}