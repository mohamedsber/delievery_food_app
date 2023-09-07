import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/constant/colors.dart';
import 'package:food_delivery_app/core/functions/valid_input.dart';
import 'package:food_delivery_app/screen/auth/widgets/custom_signing_button.dart';
import 'package:food_delivery_app/screen/auth/widgets/custom_text_form_field_login.dart';
import 'package:food_delivery_app/core/services/auth_service.dart';
import 'package:provider/provider.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    alert() {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Email or password is wrong')));
    }

    var provider = Provider.of<AuthProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          child: Form(
            key: provider.formStateLogin,
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
                    validator: (val) {
                      return validInput(val!, 10, 100);
                    },
                    isNumber: false,
                    hinttext: 'Email',
                    mycontroller: provider.email,
                    obscureText: false,
                  ),
                  CustomTextFormAuth(
                    validator: (val) {
                      return validInput(val!, 6, 30);
                    },
                    isNumber: false,
                    hinttext: 'Password',
                    mycontroller: provider.password,
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
                    onPressed: () {
                      provider.signInWithEmailAndPassword();
                      FirebaseAuth.instance
                          .authStateChanges()
                          .listen((User? user) {
                        if (user != null) {
                          Navigator.of(context)
                              .pushReplacementNamed('switchScreen');
                        }
                      });
                      //ScaffoldMessenger.of(context).showSnackBar(
                      //const SnackBar(content: Text('Processing Data')));
                    },
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    height: 90,
                    child: SignInButton(
                      width: 350,
                      buttonType: ButtonType.google,
                      btnText: 'Continue with Google',
                      buttonSize:
                          ButtonSize.large, // small(default), medium, large
                      onPressed: () {
                        provider.signInWithGoogle();
                        FirebaseAuth.instance.authStateChanges().listen(
                          (User? user) {
                            if (user != null) {
                              Navigator.of(context)
                                  .pushReplacementNamed('switchScreen');
                            } 
                          },
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
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
                        'Don\'t have an Account?  ',
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
                          Navigator.of(context)
                              .pushReplacementNamed('signupScreen');
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
