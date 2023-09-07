import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/constant/colors.dart';
import 'package:food_delivery_app/core/functions/valid_input.dart';
import 'package:food_delivery_app/screen/auth/widgets/custom_signing_button.dart';
import 'package:food_delivery_app/screen/auth/widgets/custom_text_form_field_login.dart';

import 'package:food_delivery_app/core/services/auth_service.dart';
import 'package:provider/provider.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AuthProvider>(context);

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          child: Form(
            key: provider.formStateSignUp,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      color: AppColor.primaryFontColor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Add your details to sign up',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: AppColor.secondaryFontColor,
                    ),
                  ),
                  SizedBox(height: 30),
                  CustomTextFormAuth(
                    validator: (val) {
                      return validInput(val!, 10, 50);
                    },
                    isNumber: false,
                    hinttext: 'Name',
                    mycontroller: provider.userName,
                    obscureText: false,
                  ),
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
                      return validInput(val!, 8, 20);
                    },
                    isNumber: false,
                    hinttext: 'Mobil Number',
                    mycontroller: provider.mobileNumber,
                    obscureText: false,
                  ),
                  CustomTextFormAuth(
                    validator: (val) {
                      return validInput(val!, 10, 100);
                    },
                    isNumber: false,
                    hinttext: 'Address',
                    mycontroller: provider.address,
                    obscureText: false,
                  ),
                  CustomTextFormAuth(
                    validator: (val) {
                      return validInput(val!, 6, 50);
                    },
                    isNumber: false,
                    hinttext: 'Password',
                    mycontroller: provider.password,
                    obscureText: false,
                  ),
                  CustomTextFormAuth(
                    validator: (val) {
                      return validInput(val!, 6, 50);
                    },
                    isNumber: false,
                    hinttext: 'Confirm password',
                    mycontroller: provider.rePassword,
                    obscureText: false,
                  ),
                  SizedBox(height: 10),
                  CustomSigningButton(
                    backgroundColor: AppColor.primarycolor,
                    textColor: AppColor.whiteColor,
                    borderColor: AppColor.primarycolor,
                    title: 'Sign Up',
                    onPressed: () {
                      provider.creatEmailWithEmailAndPassword();
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
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an Account?  ',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: AppColor.secondaryFontColor),
                      ),
                      InkWell(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: AppColor.primarycolor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacementNamed('loginScreen');
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
