import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/auth_controller.dart';

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

    User? myUser = await AuthC.login(email, password);

    isSignIng = false; 
    // if (User!= null) {
    //   showToast(message: "User is Succesfully Created");
    //   Get.toNamed(Routes.HOME);
    // } else {
    //   showToast(message: "Some error happened");
    // }

    // try {
    // UserCredential? myUser = await AuthC.register(email, password);
    //   Get.defaultDialog(
    //     title: "Berhasil",
    //     middleText: "Anda Telah berhasil login",
    //     onConfirm: () {
    //       emailC.clear();
    //       passwordC.clear();
    //       Get.back();
    //     },
    //     textConfirm: "OKAY",
    //   );
    // } catch (e) {
    //   Get.defaultDialog(
    //     title: "Terjadi Kesalahan",
    //     middleText: "Gagal menambahkan user.",
    //   );
    //   print(e);
    // }
  }
}
