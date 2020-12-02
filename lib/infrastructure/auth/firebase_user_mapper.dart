import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:flutter_travel/domain/auth/user.dart';
import 'package:flutter_travel/domain/core/value_objects.dart';

extension FirebaseUserDomainX on firebase.User{
  User toDomain(){
    return User(id: UniqueId.fromUniqueString(uid));
  }
}