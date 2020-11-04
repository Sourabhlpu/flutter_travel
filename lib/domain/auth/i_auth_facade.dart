import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_travel/domain/auth/user.dart';
import 'package:flutter_travel/domain/auth/value_objects.dart';

import 'auth_failure.dart';

abstract class IAuthFacade{
  Future<Option<User>> getSignedInUser();

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
    @required Username username,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<void> signOut();

  Future<Either<AuthFailure, Unit>> validateUsername({
    @required Username username,
  });

}