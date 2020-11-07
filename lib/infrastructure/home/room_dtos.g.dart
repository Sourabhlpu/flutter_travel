// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomDto _$_$_RoomDtoFromJson(Map<String, dynamic> json) {
  return _$_RoomDto(
    imageUrl: json['imageUrl'] as String,
    title: json['title'] as String,
    amount: json['amount'] as num,
    currency: json['currency'] as String,
    unit: json['unit'] as String,
    rating: json['rating'] as num,
  );
}

Map<String, dynamic> _$_$_RoomDtoToJson(_$_RoomDto instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'amount': instance.amount,
      'currency': instance.currency,
      'unit': instance.unit,
      'rating': instance.rating,
    };
