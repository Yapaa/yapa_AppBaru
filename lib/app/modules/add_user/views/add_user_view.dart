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
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  labelText: "Email",
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: controller.genderC,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  labelText: "Jenis Kelamin",
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: controller.dateC,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  labelText: "Tanggal Lahir",
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: controller.alamatC,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  labelText: "Alamat",
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: controller.sekolahC,
                textInputAction: TextInputAction.done,
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
                backgroundImage: NetworkImage(
                    "data:image/png;base64,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"),
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
