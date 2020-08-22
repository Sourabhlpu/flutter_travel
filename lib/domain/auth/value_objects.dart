import 'package:dartz/dartz.dart';
import 'package:flutter_travel/domain/core/failures.dart';
import 'package:flutter_travel/domain/core/value_objects.dart';
import 'package:flutter_travel/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String>{
  @override
  final Either<ValueFailure<String>, String> value;

  const EmailAddress._(this.value);

  factory EmailAddress(String input){
    assert(input != null);
    return EmailAddress._(
      validateEmail(input)
    );
  }
}

class Password extends ValueObject<String>{
  @override
  final Either<ValueFailure<String>, String> value;
  Password._(this.value);
  factory Password(String input){
    assert(input != null);
    return Password._(
      validatePassword(input)
    );
  }

}