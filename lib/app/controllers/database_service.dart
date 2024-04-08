import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';

const String USER_COLLECTION_REF = "user";

class DatabaseService {
  final _firestore = FirebaseFirestore.instance;

  late final CollectionReference _userRef;

  DatabaseService(){
  FirebaseDatabase.instance.setPersistenceEnabled(true);
  FirebaseDatabase.instance.reference().keepSynced(true);

}
}