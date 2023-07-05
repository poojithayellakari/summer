import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ottmate/homepage.dart';
import 'package:ottmate/loginpage.dart';

class AuthenticationController {
  /// Google signin takes no arguments
  /// Popup to select gmail to login
  void googleSignIn() async {
    try {
      GoogleSignIn googleSignIn = GoogleSignIn();
      GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      UserCredential user =
          await FirebaseAuth.instance.signInWithCredential(credential);

      if (user.user != null) {
        //user logged in sucessfully
        Get.offAll(HomeScreen());
      } else {
        EasyLoading.showError(
            "Something went wrong please contact at help@vamsidhar.in");
      }
    } on FirebaseAuthException catch (e) {
      EasyLoading.showError(e.code);
    }
  }

  bool isAuthenticated() {
    return FirebaseAuth.instance.currentUser != null;
  }

  Future<void> logOut() async {
    await FirebaseAuth.instance.signOut();
    await GoogleSignIn().signOut();
    Get.offAll(LoginScreen());
  }
}
