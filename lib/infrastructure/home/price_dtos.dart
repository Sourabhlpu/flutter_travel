
import 'package:auto_route/auto_route.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_dtos.freezed.dart';

@freezed
abstract class PriceDto implements _$PriceDto {
  const PriceDto._();
  const factory PriceDto({
    @required String currency,
    @required String unit,
    @required num amount,
  }) = _PriceDto;

  @override
  String toString() {
    return '$currency $amount/$unit';
  }

}