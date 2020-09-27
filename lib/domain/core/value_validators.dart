import 'package:dartz/dartz.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> validateEmail(String input) {
  const regexEmail =
  r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(regexEmail).hasMatch(input)) {
    return Right(input);
  } else {
    return Left(InvalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input){
  const regexPassword = r"""^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[*.!@$%^&(){}[]:;<>,.?/~_+-=|\]).{8,32}$""";
  if(input.length > 7){
    return Right(input);
  }
  else{
    return Left(InvalidPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateUsername(String input){
  if(input.length <= 1 || input.length > 50){
    return Left(InvalidUsername(failedValue: input));
  }
  else{
    return Right(input);
  }
}