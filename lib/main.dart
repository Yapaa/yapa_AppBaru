import 'package:app_baru/app/controllers/auth_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/Utils/loading.dart';
import 'app/routes/app_pages.dart';

void main() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyDF__UD7rrsuJQ54bRPDIQNtQDJzL32w8M",
        appId: "1:833293219500:android:2268bbc50adfc792d11109",
        messagingSenderId: "833293219500",
        projectId: "appbaru-1e97c",
        // Your web Firebase config options
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final authC = Get.put(AuthController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: authC.streamAuthStatus,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          print(snapshot.data);
          return GetMaterialApp(
            title: "App Baru",
            initialRoute:
                snapshot.data != null && snapshot.data!.emailVerified == true
                    ? Routes.HOME
                    : Routes.LOGIN,
            getPages: AppPages.routes,
            // home: snapshot.data != null ? HomeView() : LoginView(),
          );
        }
        return LoadingView();
      },
    );
  }
}
