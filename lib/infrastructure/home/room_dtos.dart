
import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_travel/domain/core/value_objects.dart';
import 'package:flutter_travel/domain/home/room.dart';
import 'package:flutter_travel/domain/home/value_objects.dart';
import 'package:flutter_travel/infrastructure/home/price_dtos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'room_dtos.freezed.dart';
part 'room_dtos.g.dart';

@freezed
abstract class RoomDto implements _$RoomDto {
  const RoomDto._();
  const factory RoomDto({
    @JsonKey(ignore: true) String id,
    @required String imageUrl,
    @required String title,
    @required num amount,
    @required String currency,
    @required String unit,
    @required num rating
  }) = _RoomDto;


  factory RoomDto.fromDomain(Room room) {
    return RoomDto(
        id: room.id.getOrCrash(),
        imageUrl: room.imageUrl.getOrCrash(),
        title: room.title.getOrCrash(),
        amount: room.price.getOrCrash().amount,
        currency: room.price.getOrCrash().currency,
        unit: room.price.getOrCrash().unit,
        rating: room.rating.getOrCrash()
    );
  }
  Room toDomain(){
    return Room(
        id: UniqueId.fromUniqueString(id),
        imageUrl: ImageUrl(imageUrl),
        title: SearchTitle(title),
        price: Price(PriceDto(currency: currency, unit: unit, amount: amount)),
        rating: Rating(rating)
    );
  }
  factory RoomDto.fromJson(Map<String, dynamic> json) =>
      _$RoomDtoFromJson(json);

  factory RoomDto.fromFirestore(DocumentSnapshot doc) {
    return RoomDto.fromJson(doc.data()).copyWith(id: doc.documentID);
  }
}