import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/auth_controller.dart';

class RegisterController extends GetxController {
  final AuthC = Get.find<AuthController>();
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  var showPass = true.obs;
  bool showConfirm = false;
  showConfPass() {
    showConfirm = !showConfirm;
  }
  showPassword() {}
  //TODO: Implement RegisterController
  final emailC = TextEditingController();
  final usernameC = TextEditingController();
  final passwordC = TextEditingController();
  final conpasC = TextEditingController();

  @override
  void dispose() {
    emailC.dispose();
    usernameC.dispose();
    passwordC.dispose();
    conpasC.dispose();
    super.dispose();
  }

  void signUp(
    String username,
    String email,
    String password,
  ) async {
    CollectionReference users = firestore.collection("Users");
    try {
    UserCredential? myUser = await AuthC.register(email, password);
      await users.add({
        "username": username,
        "email": email,
        "password": password,
      });
      Get.defaultDialog(
        title: "Berhasil",
        middleText: "Anda telah menambahkan user baru.$email",
        onConfirm: () {
          usernameC.clear();
          emailC.clear();
          passwordC.clear();
          Get.back();
        },
        textConfirm: "OKAY",
      );
    } catch (e) {
      Get.defaultDialog(
        title: "Terjadi Kesalahan",
        middleText: "Gagal menambahkan user.",
      );
      print(e);
    }

  }
}
