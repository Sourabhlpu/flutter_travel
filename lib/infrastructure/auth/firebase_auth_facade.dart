import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:flutter/services.dart';
import 'package:flutter_travel/domain/auth/auth_failure.dart';
import 'package:flutter_travel/domain/auth/i_auth_facade.dart';
import 'package:flutter_travel/domain/auth/user.dart';
import 'package:flutter_travel/domain/auth/value_objects.dart';
import 'package:injectable/injectable.dart';
import 'firebase_user_mapper.dart';


@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade extends IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;

  FirebaseAuthFacade(this._firebaseAuth, this._firestore);

  @override
  Future<Option<User>> getSignedInUser() async =>
      optionOf(_firebaseAuth.currentUser?.toDomain());


  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {EmailAddress emailAddress, Password password, Username username}) async {
    final emailStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try{
      await _firebaseAuth.createUserWithEmailAndPassword(email: emailStr, password: passwordStr);
      return Right(unit);
    }on PlatformException catch(e){
      if(e.code == 'ERROR_EMAIL_ALREADY_IN_USE')
        return left(const AuthFailure.emailAlreadyInUse());
      else
        return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {EmailAddress emailAddress, Password password}) async {
    final emailStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try{
      await _firebaseAuth.signInWithEmailAndPassword(email: emailStr, password: passwordStr);
      return  Right(unit);
    }on PlatformException catch(e){
      if(e.code == 'ERROR_WRONG_PASSWORD' || e.code == 'ERROR_USER_NOT_FOUND')
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      else
        return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() {
    return Future.wait([_firebaseAuth.signOut()]);
  }

  @override
  Future<Either<AuthFailure, Unit>> validateUsername({Username username}) async {
    final usernameStr = username.getOrCrash();
    final usernameDoc = _firestore.collection('userNames').document(usernameStr);
    final  docSnapshot = await usernameDoc.get();
    if(docSnapshot.exists)
      return Left(const AuthFailure.usernameAlreadyInUse());
    else
      return Right(unit);
  }
}
