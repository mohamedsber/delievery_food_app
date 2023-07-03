import 'package:flutter/material.dart';
import 'package:food_delivery_app/constant/colors.dart';
import 'package:food_delivery_app/constant/image_assets.dart';
import 'package:food_delivery_app/screen/auth/sign_in.dart';
import 'package:food_delivery_app/screen/auth/login.dart';

import 'auth/widgets/custom_signing_button.dart';

class SigningScreen extends StatelessWidget {
  const SigningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(AppImageAsset.shapedsubtraction),
                ),
              ),
              child: Image.asset(
                AppImageAsset.backgroundobjects,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 60,
            right: 0,
            left: 0,
            child: Image.asset(AppImageAsset.monkeylogo),
          ),
          Positioned(
            top: 100,
            bottom: 0,
            right: 0,
            left: 0,
            child: Image.asset(AppImageAsset.monkeytext),
          ),
          Positioned(
            bottom: 330,
            right: 0,
            left: 0,
            child: Text(
              'FOOD DELIEVERY',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 10,
                  letterSpacing: 3,
                  fontWeight: FontWeight.w400,
                  color: AppColor.primaryFontColor),
            ),
          ),
          Positioned(
            bottom: 250,
            right: 0,
            left: 0,
            child: Text(
              'Discover the best foods from over 1,000\nrestaurants and fast delivery to your doorstep',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: AppColor.secondaryFontColor),
            ),
          ),
          Positioned(
            bottom: 130,
            left: 35,
            right: 35,
            child: SizedBox(
              height: 60,
              child: ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor:
                      MaterialStatePropertyAll(AppColor.primarycolor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: AppColor.whiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
                onPressed: () {
                  // Navigator.push(context,MaterialPageRoute(builder: (context) => SignUp()));
                },
              ),
            ),
          ),
          Positioned(
            bottom: 130,
            left: 35,
            right: 35,
            child: CustomSigningButton(
              title: 'Login',
              backgroundColor: AppColor.primarycolor,
              borderColor: AppColor.primarycolor,
              textColor: AppColor.whiteColor,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
            ),
          ),
          Positioned(
            bottom: 50,
            left: 35,
            right: 35,
            child: CustomSigningButton(
              title: 'Create an Account',
              backgroundColor: AppColor.whiteColor,
              borderColor: AppColor.primarycolor,
              textColor: AppColor.primarycolor,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignUp()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
