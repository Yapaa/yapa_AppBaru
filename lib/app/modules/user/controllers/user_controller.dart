import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
   late Stream<QuerySnapshot> stream;
   final CollectionReference _users =
      FirebaseFirestore.instance.collection('Users');


@override
  void onInit() {
    super.onInit();
    stream = FirebaseFirestore.instance.collection('Users').snapshots();
  }

  

  @override
  void onClose() {
    super.onClose();
  }
  }

