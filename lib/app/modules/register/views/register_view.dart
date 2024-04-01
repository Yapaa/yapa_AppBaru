import 'package:app_baru/app/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {

  final AuthC = Get.find<AuthController>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "asset/Logo.png",
              height: 130,
              width: 102.5,
            ),
            Container(
              height: 493,
              width: 390,
              padding: EdgeInsets.all(20),
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
                  Material(
                    color: Color(0xFF156ACA),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  const Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 36,
                      color: Color(0xFF156ACA),
                      fontFamily: "Robotos",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: controller.usernameC,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      labelText: "Username",
                      labelStyle: TextStyle(color: Color(0xFF156ACA)),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF156ACA))),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF156ACA))),
                      prefixIcon:
                          Icon(Icons.person_pin, color: Color(0xFF156ACA)),
                    ),
                  ),
                  SizedBox(height: 10),
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
                  SizedBox(height: 10),
                  TextField(
                    controller: controller.passwordC,
                    obscureText: controller.showPass.value,
                    textInputAction: TextInputAction.next,
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
                            controller.showPass.value = !controller.showPass.value;
                        },
                        icon: Icon(
                            color: Color(0xFF156ACA),
                            controller.showPass.value ? Icons.visibility_off : Icons.visibility),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: controller.conpasC,
                    obscureText: controller.showPass.value,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      labelText: "Confirm Password",
                      labelStyle: TextStyle(color: Color(0xFF156ACA)),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF156ACA))),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF156ACA))),
                      prefixIcon: Icon(Icons.lock, color: Color(0xFF156ACA)),
                      suffixIcon: IconButton(
                        onPressed: () {
                            controller.showPass.value = !controller.showPass.value;
                        },
                        icon: Icon(
                            color: Color(0xFF156ACA),
                            controller.showPass.value ? Icons.visibility_off : Icons.visibility),
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  Container(
                    child: ElevatedButton(
                      onPressed: () => controller.signUp(
                        controller.usernameC.text,
                        controller.emailC.text,
                        controller.passwordC.text, 
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                            child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Already have an account?",
                    style: TextStyle(color: Color(0xFF156ACA), fontSize: 13),
                  ),
                  GestureDetector(
                    child: TextButton(
                      onPressed: () =>
                        Get.toNamed(Routes.LOGIN),
                      child: Text(
                        "Login Here!",
                        style:
                            TextStyle(color: Color(0xFF156ACA), fontSize: 13),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
  // void _signUp() async {
  //   setState(() {
  //     controller.isSigningUp = true;
  //   });

  //   String email = controller.emailC.text;
  //   String username = controller.usernameC.text;
  //   String password = controller.passwordC.text;

  //   User? user = await AuthC.register(email, password);

  //   Map<String, String> dataToSave = {
  //     'username': controller.usernameC.text,
  //     'email': controller.emailC.text,
  //     'password': controller.passwordC.text
  //   };

  //   CollectionReference collectionRef =
  //       FirebaseFirestore.instance.collection('Users');
  //   collectionRef.add(dataToSave);

  //   setState(() {
  //     controller.isSigningUp = false;
  //   });

  //   if (user != null) {
  //     showToast(message: "User is Succesfully Created");
  //     Get.toNamed(Routes.LOGIN);
  //   } else {
  //     showToast(message: "Some error happened");
  //   }
  // }
}

