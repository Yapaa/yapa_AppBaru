import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/add_user_controller.dart';

class AddUserView extends GetView<AddUserController> {
  const AddUserView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add User'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: controller.namaC,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: "Nama",
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: controller.emailC,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: "Email",
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: controller.genderC,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: "Jenis Kelamin",
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: controller.dateC,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: "Tanggal Lahir",
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: controller.alamatC,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: "Alamat",
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: controller.sekolahC,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: "Asal sekolah",
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: controller.masukC,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  labelText: "Tanggal Masuk",
                ),
              ),
              CircleAvatar(
                radius: 64,
                backgroundImage: NetworkImage("")
              ),
              Positioned(
                child: IconButton(
                  onPressed: controller.selectImage,
                  icon: Icon(Icons.add_a_photo),
                ),
                bottom: -10,
                left: 80,
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => controller.addUser(
                  controller.namaC.text,
                  controller.emailC.text,
                  controller.genderC.text,
                  controller.dateC.text,
                  controller.alamatC.text,
                  controller.sekolahC.text,
                  controller.masukC.text,
                ),
                child: Text("ADD USER"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
