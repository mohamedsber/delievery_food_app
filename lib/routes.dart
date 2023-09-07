import 'package:flutter/material.dart';
import 'package:food_delivery_app/screen/auth/login.dart';
import 'package:food_delivery_app/screen/auth/sign_in.dart';
import 'package:food_delivery_app/screen/desserts_screen.dart';
import 'package:food_delivery_app/screen/home_screen.dart';
import 'package:food_delivery_app/screen/menu_screen.dart';
import 'package:food_delivery_app/screen/more_screen.dart';
import 'package:food_delivery_app/screen/offers_screen.dart';
import 'package:food_delivery_app/screen/profile_screen.dart';
import 'package:food_delivery_app/screen/signing_screen.dart';
import 'package:food_delivery_app/screen/splash_screen.dart';
import 'package:food_delivery_app/screen/switch_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => SplashScreen(),
  'loginScreen': (context) => Login(),
  'signupScreen': (context) => SignUp(),
  'signingScreen': (context) => SigningScreen(),
  'switchScreen': (context) => SwitchScreen(),
  'homeScreen': (context) => HomeScreen(),
  'profileScreen': (context) => ProfileScreen(),
  'menuScreen': (context) => MenuScreen(),
  'offerScreen': (context) => OffersScreen(),
  'moreScreen': (context) => MoreScreen(),
  'dessertScreen': (context) => DessertScreen(),
};
