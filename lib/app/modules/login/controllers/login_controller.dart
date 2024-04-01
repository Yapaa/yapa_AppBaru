import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Utils/toast.dart';
import '../../../controllers/auth_controller.dart';
import '../../../routes/app_pages.dart';

class LoginController extends GetxController {

  final AuthC = Get.find<AuthController>();

  
  var _isSignIng = false.obs;
  bool get isSignIng => _isSignIng.value;  
  set isSignIng (bool value) => _isSignIng.value = value;


  var isHidden = true.obs;
  TextEditingController emailC = TextEditingController(text: "yapaalh@gmail.com");
  TextEditingController passwordC = TextEditingController(text: "yapalh");

  @override
  void dispose() {
    emailC.dispose();
    passwordC.dispose();
    super.dispose();
  }
  void signIn() async {
    
    isSignIng = true;
    String email =emailC.text;
    String password = passwordC.text;

    User? user = await AuthC.login(email, password);

    Map<String, String> dataToSave = {
      'email': emailC.text,
      'password': passwordC.text
    };

    CollectionReference collectionRef =
        FirebaseFirestore.instance.collection('Users');
    collectionRef.add(dataToSave);

    isSignIng = false; 
    if (user!= null) {
      showToast(message: "User is Succesfully Created");
      Get.toNamed(Routes.HOME);
    } else {
      showToast(message: "Some error happened");
    }
  }
}
