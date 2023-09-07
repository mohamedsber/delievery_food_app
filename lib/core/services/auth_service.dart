import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthProvider with ChangeNotifier {
   TextEditingController userName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobileNumber = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController rePassword = TextEditingController();

  GlobalKey<FormState> formStateLogin = GlobalKey<FormState>();
  GlobalKey<FormState> formStateSignUp = GlobalKey<FormState>();

  creatEmailWithEmailAndPassword() async {
    var formData = formStateSignUp.currentState;
    if(formData!.validate()){
      print('not valid');
      
    }else{print('valid');}



    try {
      if(password == rePassword){
        final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
      }
      
                        
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  



  signInWithEmailAndPassword() async {
    // Trigger the authentication flow
    var formData = formStateLogin.currentState;
    if(formData!.validate()){
      print('not valid');
      
    }else{print('valid');}
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
      
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

    Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    final UserCredential user =
        await FirebaseAuth.instance.signInWithCredential(credential);
    print(user.user!.displayName);
    return user;
  }


  signOut()async{
  await FirebaseAuth.instance.signOut();
}
}

