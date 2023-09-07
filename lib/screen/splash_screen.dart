import 'package:flutter/material.dart';
import 'package:food_delivery_app/constant/image_assets.dart';
import 'package:food_delivery_app/screen/signing_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimtion;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));

    fadingAnimtion =
        Tween<double>(begin: .2, end: 1).animate(animationController!);

    animationController!.repeat(reverse: true);
    goToOnBoardingScreen();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
              tag: 'monkeylogo',
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(AppImageAsset.background))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             
                
                 Image.asset(AppImageAsset.monkeylogo),
              SizedBox(height: 20),
              FadeTransition(
                opacity: fadingAnimtion!,
                child: Image.asset(AppImageAsset.monkeytext),
              ),
              SizedBox(height: 10),
              Text(
                'FOOD DELIEVERY',
                style: TextStyle(
                    fontSize: 10,
                    letterSpacing: 3,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff4A4A4C)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void goToOnBoardingScreen() {
    Future.delayed(Duration(milliseconds: 3500), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => SigningScreen()));
    });
  }
}
