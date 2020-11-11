import 'package:dartz/dartz.dart';
import 'package:flutter_travel/infrastructure/home/price_dtos.dart';

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

Either<ValueFailure<String>, String> validatePassword(String input) {
  const regexPassword =
      r"""^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[*.!@$%^&(){}[]:;<>,.?/~_+-=|\]).{8,32}$""";
  if (input.length > 7) {
    return Right(input);
  } else {
    return Left(InvalidPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateUsername(String input) {
  if (input.length <= 1 || input.length > 50) {
    return Left(InvalidUsername(failedValue: input));
  } else {
    return Right(input);
  }
}

Either<ValueFailure<String>, String> validateImageUrl(String input) {
  const regexImageUrl = r"""/\.(jpeg|jpg|gif|png)$/""";
  if (input.isEmpty)
    return Left(InvalidImageUrl(failedValue: input));
  else if (RegExp(regexImageUrl).hasMatch(input))
    return Right(input);
  else
    return Left(InvalidImageUrl(failedValue: input));
}

Either<ValueFailure<PriceDto>, PriceDto> validatePrice(PriceDto priceDto) {
  if (priceDto.amount <= 0.0) {
    return Left(InvalidPrice(failedValue: priceDto));
  } else {
    return Right(priceDto);
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure.multiline(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateMaxStringLength(
    String input, int maxLength) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
      ValueFailure.exceedingLength(failedValue: input, max: maxLength),
    );
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<num>, num> validateInRange(num input, num maxRange, num minRange) {
  if (input >= minRange && input <= minRange) {
    return right(input);
  } else {
    return left(ValueFailure.outOfRange(failedValue: input));
  }
}

