// ignore_for_file: non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../../Utils/image.dart';

class AddUserController extends GetxController {

  final namaC = TextEditingController();
  final emailC = TextEditingController();
  final genderC = TextEditingController();
  final dateC = TextEditingController();
  final alamatC = TextEditingController();
  final sekolahC = TextEditingController();
  final masukC = TextEditingController();

  Uint8List? _image;

  
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void addUser(
    String nama,
    String email,
    String gender,
    String date,
    String alamat,
    String sekolah,
    String masuk,
    ) async {
    CollectionReference users = firestore.collection("Users");

    try {
      await users.add({
      "nama": nama,
      "Email": email,
      "Gender": gender,
      "Date": date,
      "Alamat": alamat,
      "Sekolah": sekolah,
      "Masuk": masuk,
    });

    Get.defaultDialog(
      title: "Berhasil",
      middleText: "Anda telah menambahkan user baru.",
      onConfirm: () {
        namaC.clear();
        emailC.clear();
        genderC.clear();
        dateC.clear();
        alamatC.clear();
        sekolahC.clear();
        masukC.clear();
        Get.back();
      },
      textConfirm: "OKAY",
    );
    } catch (e){
      print(e);
      Get.defaultDialog(
        title: "Terjadi Kesalahan",
        middleText: "Gagal menambahkan user.",
      );
    }    
  }


  @override
  void onClose() {
    namaC.dispose();
    emailC.dispose();
    genderC.dispose();
    dateC.dispose();
    alamatC.dispose();
    sekolahC.dispose();
    masukC.dispose();
    super.onClose();
  }

  void selectImage() async {
    Uint8List img = await pickImage(ImageSource.gallery);
  }
}
