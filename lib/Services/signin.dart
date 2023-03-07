import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_berson/screens/view.dart';
import 'package:get/get.dart';

UserSign(String email, String password) async {
  try {
    final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    print(credential);

    Get.to(() => ViewData());
    // Get.to(() => Creatform());
  } on FirebaseAuthException catch (e) {
    String message = 'خطأ';
    if (e.code == 'user-not-found') {
      message = 'No user found for that email.';
    } else if (e.code == 'wrong-password') {
      message = 'Wrong password provided for that user.';
    }
    Get.snackbar('خطأ بالدخول', message);
  }
}
