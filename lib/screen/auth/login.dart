import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/constant/colors.dart';
import 'package:food_delivery_app/screen/auth/widgets/custom_signing_button.dart';
import 'package:food_delivery_app/screen/auth/widgets/custom_text_form_field.dart';
import 'package:food_delivery_app/screen/home_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';

import 'sign_in.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50),
                Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      color: AppColor.primaryFontColor),
                ),
                SizedBox(height: 10),
                Text(
                  'Add your details to login',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: AppColor.secondaryFontColor),
                ),
                SizedBox(height: 30),
                CustomTextFormAuth(
                  isNumber: false,
                  hinttext: 'Email',
                  mycontroller: TextEditingController(),
                  obscureText: false,
                ),
                CustomTextFormAuth(
                  isNumber: false,
                  hinttext: 'Password',
                  mycontroller: TextEditingController(),
                  obscureText: false,
                ),
                SizedBox(height: 25),
                Text(
                  'Forgot your password?',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: AppColor.secondaryFontColor),
                ),
                SizedBox(height: 30),
                CustomSigningButton(
                  backgroundColor: AppColor.primarycolor,
                  textColor: AppColor.whiteColor,
                  borderColor: AppColor.primarycolor,
                  title: 'Login',
                  onPressed: () {},
                ),
                SizedBox(height: 30),
                Text(
                  'or Login With',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: AppColor.secondaryFontColor),
                ),
                SizedBox(height: 15),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  height: 90,
                  child: SignInButton(
                      width: 350,
                      buttonType: ButtonType.google,
                      btnText: 'Continue with Google',
                      buttonSize:
                          ButtonSize.large, // small(default), medium, large
                      onPressed: () {
                        signInWithGoogle().then((value) =>
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen())));
                      }),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  height: 90,
                  child: SignInButton(
                      width: 350,
                      buttonType: ButtonType.facebook,
                      btnText: 'Continue with Facebook',
                      buttonSize:
                          ButtonSize.large, // small(default), medium, large
                      onPressed: () {
                        print('click');
                      }),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dont have an Account?  ',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: AppColor.secondaryFontColor),
                    ),
                    InkWell(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            color: AppColor.primarycolor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
