import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';
import 'errors.dart';
import 'failures.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  T getOrCrash(){
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  bool isValid() => value.isRight();

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit{
    return value.fold(
        (l) => left(l),
        (r) => right(unit),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ValueObject<T> &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value{$value}';
}
class UniqueId extends ValueObject<String>{
  @override
  final Either<ValueFailure<String>, String>  value;

  factory UniqueId(){
    return UniqueId._(
        right(Uuid().v1())
    );
  }

  factory UniqueId.fromUniqueString(String uniqueId){
    assert(uniqueId != null);
    return UniqueId._(
        right(uniqueId)
    );
  }
  const UniqueId._(this.value);
}


