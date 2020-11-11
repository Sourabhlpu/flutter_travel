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

class Username extends ValueObject<String>{
  @override
  final Either<ValueFailure<String>, String> value;
  Username._(this.value);
  factory Username(String input){
    assert(input != null);
    return Username._(
      validateUsername(input)
    );
  }

  factory Username.isAvailable(bool available, String input){
    if(available)
      return Username._(
        Right(input)
      );
    else
      return Username._(
        Left(UsernameAlreadyExists(failedValue: input))
      );
  }
}