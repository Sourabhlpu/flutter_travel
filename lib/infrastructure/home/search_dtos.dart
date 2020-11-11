
import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_travel/domain/core/value_objects.dart';
import 'package:flutter_travel/domain/home/search.dart';
import 'package:flutter_travel/domain/home/value_objects.dart';
import 'package:flutter_travel/infrastructure/home/price_dtos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'search_dtos.freezed.dart';
part 'search_dtos.g.dart';

@freezed
abstract class SearchDto implements _$SearchDto {
  const SearchDto._();
  const factory SearchDto({
    @JsonKey(ignore: true) String id,
    @required String imageUrl,
    @required String title,
    @required num amount,
    @required String currency,
    @required String unit,
    @required num rating
  }) = _SearchDto;


  factory SearchDto.fromDomain(Search search) {
    return SearchDto(
        id: search.id.getOrCrash(),
        imageUrl: search.imageUrl.getOrCrash(),
        title: search.title.getOrCrash(),
        amount: search.price.getOrCrash().amount,
        currency: search.price.getOrCrash().currency,
        unit: search.price.getOrCrash().unit,
      rating: search.rating.getOrCrash()
    );
  }
  Search toDomain(){
    return Search(
        id: UniqueId.fromUniqueString(id),
        imageUrl: ImageUrl(imageUrl),
        title: SearchTitle(title),
        rating: Rating(rating),
        price: Price(PriceDto(currency: currency, unit: unit, amount: amount))
    );
  }
  factory SearchDto.fromJson(Map<String, dynamic> json) =>
      _$SearchDtoFromJson(json);

  factory SearchDto.fromFirestore(DocumentSnapshot doc) {
    return SearchDto.fromJson(doc.data).copyWith(id: doc.documentID);
  }
}