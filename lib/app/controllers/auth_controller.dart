import 'package:app_baru/app/Utils/toast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import '../routes/app_pages.dart';

class AuthController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;

  Stream<User?> get streamAuthStatus => auth.authStateChanges();

  Future<User?> login(String email, String password) async {
    try {
      UserCredential myUser = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      if (myUser.user!.emailVerified) {
        Get.offAllNamed(Routes.HOME);
      } else {
        Get.defaultDialog(
          title: "Verification Email",
          middleText:
              "Kamu perlu verifikasi email terlebih dahulu. Apakah kamu ingin dikirimkan verifikasi ulang ?",
          onConfirm: () async {
            await myUser.user!.sendEmailVerification();
            Get.back();
          },
          textConfirm: "Kirim Ulang",
          textCancel: "Kembali",
        );
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        showToast(message: 'Invalid email or password.');
        Get.defaultDialog(
          title: "Terjadi Kesalahan.",
          middleText: "Invalid email or password.",
        );
      } else if (e.code == 'wrong-password') {
        showToast(message: 'An error occurred: ${e.code}');
        Get.defaultDialog(
          title: "Terjadi Kesalahan.",
          middleText: "An error occurred.",
        );
      }
    } catch (e) {
      Get.defaultDialog(
        title: "Terjadi Kesalahan.",
        middleText: "Tidak dapat login dengan akun ini.",
      );
    }
    return null;
  }

  register(String email, String password) async {
    try {
      UserCredential myUser = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      // return myUser;
      await myUser.user!.sendEmailVerification();
      Get.defaultDialog(
          title: "Verification Email",
          middleText: "Kami telah mengirimikan email verifikasi ke $email.",
          onConfirm: () {
            Get.back(); // close dialog
            Get.back(); // go to login
          },
          textConfirm: "Ya, Saya akan cek email.");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        showToast(message: 'Invalid email or password.');
        Get.defaultDialog(
          title: "Terjadi Kesalahan.",
          middleText: "Invalid email or password.",
        );
      } else if (e.code == 'email--already-in-use') {
        showToast(message: 'The account already exists for that email.');
        Get.defaultDialog(
          title: "Terjadi Kesalahan.",
          middleText: "The account already exists for that email.",
        );
      }
    } catch (e) {
      print(e);
      Get.defaultDialog(
        title: "Terjadi Kesalahan.",
        middleText: "Tidak dapat mendaftarkan akun ini.",
      );
    }
  }

  void logout() async {
    await FirebaseAuth.instance.signOut();
    Get.offAllNamed(Routes.LOGIN);
  }
}
