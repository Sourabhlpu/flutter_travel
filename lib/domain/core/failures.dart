import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T>{
  const factory ValueFailure.exceedingLength({
    @required T failedValue,
    @required int max,
  }) = ExceedingLength<T>;
  const factory ValueFailure.empty({
    @required T failedValue,
  }) = Empty<T>;
  const factory ValueFailure.multiline({
    @required T failedValue,
  }) = Multiline<T>;
  const factory ValueFailure.listTooLong({
    @required T failedValue,
    @required int max,
  }) = ListTooLong<T>;
  const factory ValueFailure.invalidEmail({
    @required T failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.invalidPassword({
    @required T failedValue,
  }) = InvalidPassword<T>;
  const factory ValueFailure.invalidUsername({
    @required T failedValue,
  }) = InvalidUsername<T>;
  const factory ValueFailure.usernameAlreadyExists({
    @required T failedValue,
  }) = UsernameAlreadyExists<T>;
  const factory ValueFailure.invalidImageUrl({
    @required T failedValue,
  }) = InvalidImageUrl<T>;
  const factory ValueFailure.invalidPrice({
    @required T failedValue,
  }) = InvalidPrice<T>;
  const factory ValueFailure.outOfRange({
    @required T failedValue,
  }) = OutOfRange<T>;
}