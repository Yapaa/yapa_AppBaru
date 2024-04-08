import 'package:app_baru/app/controllers/auth_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  AuthController AuthC = AuthController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Profile",
            style: TextStyle(color: Colors.blue),
          ),
          centerTitle: true),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                  child: Stack(
                children: [
                  Column(children: [
                    CircleAvatar(
                      radius: 64,
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYgvxaS317Xl0AHkE_Qd4VbPleZDxls6LFzA&usqp=CAU"),
                    ),
                    Positioned(
                      top: -10,
                      bottom: -10,
                      left: 280,
                      child: IconButton(
                        onPressed: controller.selectImage,
                        icon: Icon(Icons.add_a_photo),
                      ),
                    ),
                  ]),
                ],
              )),
              SizedBox(height: 10),
              //Edit Profile
              Container(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    width: 90,
                    child: Center(
                      child: Text(
                        "Edit Profile",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    side: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.only(top: 20, left: 35, right: 35),
                child: Column(children: [
                  TextField(
                    controller: controller.usernameC,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      labelText: "Username",
                      labelStyle: TextStyle(color: Color(0xFF156ACA)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF156ACA)),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF156ACA)),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      prefixIcon:
                          Icon(Icons.person_pin, color: Color(0xFF156ACA)),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    controller: controller.emailC,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(color: Color(0xFF156ACA)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF156ACA)),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF156ACA)),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      prefixIcon:
                          Icon(Icons.person_pin, color: Color(0xFF156ACA)),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    controller: controller.telpC,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      labelText: "No. Telp",
                      labelStyle: TextStyle(color: Color(0xFF156ACA)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF156ACA)),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF156ACA)),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      prefixIcon:
                          Icon(Icons.phone_rounded, color: Color(0xFF156ACA)),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    controller: controller.BirthC,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      labelText: "Birth",
                      labelStyle: TextStyle(color: Color(0xFF156ACA)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF156ACA)),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF156ACA)),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      prefixIcon: Icon(Icons.calendar_today_sharp,
                          color: Color(0xFF156ACA)),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    controller: controller.addressC,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      labelText: "Adrress",
                      labelStyle: TextStyle(color: Color(0xFF156ACA)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF156ACA)),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF156ACA)),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      prefixIcon: Icon(Icons.home, color: Color(0xFF156ACA)),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.defaultDialog(
              title: "Logout",
              titleStyle: TextStyle(fontSize: 20),
              content: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Text("Are you sure, you want to Logout?"),
              ),
              confirm: Expanded(
                child: ElevatedButton(
                  onPressed: () => AuthC.logout(),
                  child: Text("Yes",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    side: BorderSide.none,
                  ),
                ),
              ),
              cancel: ElevatedButton(
                    onPressed: () => Get.back(), child: Text("No",
                    style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                    style:  ElevatedButton.styleFrom(side: BorderSide.none,),
                    ),
            );
          },
          child: Icon(Icons.logout, color: Colors.white),
          backgroundColor: Color.fromRGBO(21, 106, 202, 1)),
    );
  }
}
