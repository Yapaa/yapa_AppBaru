import 'package:app_baru/app/Utils/image.dart';
import 'package:app_baru/app/controllers/auth_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController {
  final AuthC = Get.find<AuthController>();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final user = FirebaseAuth.instance.currentUser;
  FirebaseAuth currentUser = FirebaseAuth.instance;

  Uint8List? _image;
  
  final usernameC = TextEditingController(text: "Yapa");
  final emailC = TextEditingController(text: "yapaalh@gmail.com");
  final telpC = TextEditingController(text: "087812191847");
  final BirthC = TextEditingController(text: "23-Nov-2004");
  final addressC = TextEditingController(text: "Gadang, Kota Malang");

  @override
  void dispose() {
    usernameC.dispose();
    emailC.dispose();
    telpC.dispose();
    BirthC.dispose();
    addressC.dispose();
  }

  void selectImage() async {
    Uint8List img = await pickImage(ImageSource.gallery);
  }
}
