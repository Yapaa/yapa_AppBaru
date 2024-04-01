import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
   late Stream<QuerySnapshot> stream;


@override
  void onInit() {
    super.onInit();
    stream = FirebaseFirestore.instance.collection('Users').snapshots();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
  }

