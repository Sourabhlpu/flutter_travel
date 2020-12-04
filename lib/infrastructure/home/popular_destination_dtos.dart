import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travel/domain/core/value_objects.dart';
import 'package:flutter_travel/domain/home/popular_destination.dart';
import 'package:flutter_travel/domain/home/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_destination_dtos.g.dart';
part 'popular_destination_dtos.freezed.dart';

@freezed
abstract class PopularDestinationDto implements _$PopularDestinationDto {
  const PopularDestinationDto._();
  const factory PopularDestinationDto({
    @JsonKey(ignore: true) String id,
    @required String imageUrl,
    @required String title,
  }) = _PopularDestinationDto;


  factory PopularDestinationDto.fromDomain(PopularDestination popularDestination) {
    return PopularDestinationDto(
      id: popularDestination.id.getOrCrash(),
      imageUrl: popularDestination.imageUrl.getOrCrash(),
      title: popularDestination.title.getOrCrash(),
    );
  }
  PopularDestination toDomain(){
    return PopularDestination(
        id: UniqueId.fromUniqueString(id),
        imageUrl: ImageUrl(imageUrl),
      title: PopularDestinationTitle(title)

    );
  }
  factory PopularDestinationDto.fromJson(Map<String, dynamic> json) =>
      _$PopularDestinationDtoFromJson(json);

  factory PopularDestinationDto.fromFirestore(DocumentSnapshot doc) {
    return PopularDestinationDto.fromJson(doc.data()).copyWith(id: doc.id);
  }
}