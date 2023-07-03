import 'package:flutter/material.dart';
import 'package:food_delivery_app/constant/colors.dart';
import 'package:food_delivery_app/screen/auth/widgets/custom_signing_button.dart';
import 'package:food_delivery_app/screen/auth/widgets/custom_text_form_field.dart';
import 'package:food_delivery_app/screen/auth/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                SizedBox(height: 20),
                Text(
                  'Sign Up',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      color: AppColor.primaryFontColor),
                ),
                SizedBox(height: 10),
                Text(
                  'Add your details to sign up',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: AppColor.secondaryFontColor),
                ),
                SizedBox(height: 30),
                CustomTextFormAuth(
                  isNumber: false,
                  hinttext: 'Name',
                  mycontroller: TextEditingController(),
                  obscureText: false,
                ),
                CustomTextFormAuth(
                  isNumber: false,
                  hinttext: 'Email',
                  mycontroller: TextEditingController(),
                  obscureText: false,
                ),
                CustomTextFormAuth(
                  isNumber: false,
                  hinttext: 'Mobil No',
                  mycontroller: TextEditingController(),
                  obscureText: false,
                ),
                CustomTextFormAuth(
                  isNumber: false,
                  hinttext: 'Address',
                  mycontroller: TextEditingController(),
                  obscureText: false,
                ),
                CustomTextFormAuth(
                  isNumber: false,
                  hinttext: 'Password',
                  mycontroller: TextEditingController(),
                  obscureText: false,
                ),
                CustomTextFormAuth(
                  isNumber: false,
                  hinttext: 'Confirm password',
                  mycontroller: TextEditingController(),
                  obscureText: false,
                ),
                SizedBox(height: 10),
                CustomSigningButton(
                  backgroundColor: AppColor.primarycolor,
                  textColor: AppColor.whiteColor,
                  borderColor: AppColor.primarycolor,
                  title: 'Sign Up',
                  onPressed: () {},
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
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
