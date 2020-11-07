// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchDto _$_$_SearchDtoFromJson(Map<String, dynamic> json) {
  return _$_SearchDto(
    imageUrl: json['imageUrl'] as String,
    title: json['title'] as String,
    amount: json['amount'] as num,
    currency: json['currency'] as String,
    unit: json['unit'] as String,
  );
}

Map<String, dynamic> _$_$_SearchDtoToJson(_$_SearchDto instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'amount': instance.amount,
      'currency': instance.currency,
      'unit': instance.unit,
    };
