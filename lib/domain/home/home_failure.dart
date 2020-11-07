import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_failure.freezed.dart';

@freezed
abstract class HomeFailure implements _$HomeFailure {
  const factory HomeFailure.unexpected() = _Unexpected;
  const factory HomeFailure.insufficientPermission() = _InsufficientPermission;
}