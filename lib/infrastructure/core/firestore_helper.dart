import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_travel/domain/auth/i_auth_facade.dart';
import 'package:flutter_travel/domain/core/errors.dart';

import '../../injection.dart';

extension FirestoreX on FirebaseFirestore{
  Future<DocumentReference> userDocument() async{
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance.collection('users').doc(user.id.getOrCrash());
  }
}
extension DocumentReferenceX on DocumentReference {
  CollectionReference get searchCollection => collection('searches');
  CollectionReference get recommendationsCollection => collection('recommendations');
  CollectionReference get popularDestinationCollection => collection('popularDestinations');
  CollectionReference get roomsCollection => collection('rooms');
}