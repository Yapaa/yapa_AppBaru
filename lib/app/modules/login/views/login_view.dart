import 'package:app_baru/app/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final AuthC = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "asset/Logo.png",
              height: 150,
              width: 112.5,
            ),
            Container(
              height: 420,
              width: 390,
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color(0xFFF2F8FF),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.250),
                      blurRadius: 5,
                      offset: Offset(0, 4))
                ],
              ),
              child: Column(
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 36,
                      color: Color(0xFF156ACA),
                      fontFamily: "Robotos",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: controller.emailC,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(color: Color(0xFF156ACA)),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF156ACA))),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF156ACA))),
                      prefixIcon:
                          Icon(Icons.person_pin, color: Color(0xFF156ACA)),
                    ),
                  ),
                  SizedBox(height: 16),
                  Obx(
                    () => TextField(
                      controller: controller.passwordC,
                      obscureText: controller.isHidden.value,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(color: Color(0xFF156ACA)),
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF156ACA))),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF156ACA))),
                        prefixIcon: Icon(Icons.lock, color: Color(0xFF156ACA)),
                        suffixIcon: IconButton(
                          onPressed: () {
                            controller.isHidden.value =
                                !controller.isHidden.value;
                          },
                          icon: Icon(
                              color: controller.isHidden.value ? Color(0xFF156ACA) : Colors.grey,
                              controller.isHidden.value
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {
                        print("Forgot Password Clicked");
                      },
                      child: Text(
                        "Forgot Password?",
                        style:
                            TextStyle(color: Color(0xFF156ACA), fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Obx(() => ElevatedButton(
                    onPressed: () => AuthC.login(
                        controller.emailC.text, controller.passwordC.text),
                    child: Container(
                      width: double.infinity,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                          child: controller.isSignIng
                              ? CircularProgressIndicator(
                                  color: Colors.white,
                                )
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                    ),
                  ),),
                  SizedBox(height: 16),
                  Text(
                    "Didn't have an account?",
                    style: TextStyle(color: Color(0xFF156ACA), fontSize: 15),
                  ),
                  GestureDetector(
                    child: TextButton(
                      onPressed: () => Get.toNamed(Routes.REGISTER),
                      child: Text(
                        "Register Here!",
                        style:
                            TextStyle(color: Color(0xFF156ACA), fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
