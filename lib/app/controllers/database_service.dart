// import 'package:cloud_firestore/cloud_firestore.dart';

// const String USER_COLLECTION_REF = "user";

// class DatabaseService {
//   final _firestore = FirebaseFirestore.instance;

//   late final CollectionReference _userRef;

//   DatabaseService(){
//     _userRef = _firestore.collection(USER_COLLECTION_REF).withConverter(
//       fromFirestore: (snapshots, _) => Users.fromJson(
//         snapshot.data()!,
//       ), toFirestore: toFirestore)
//   }

// }