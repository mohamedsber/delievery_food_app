import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/constant/colors.dart';
import 'package:food_delivery_app/constant/image_assets.dart';
import 'package:food_delivery_app/core/services/auth_service.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AuthProvider>(context);

    return Container(
      padding: EdgeInsets.symmetric(vertical: 50),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Profile', style: TextStyle(fontSize: 27)),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            width: 150,
            height: 150,
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.bottomCenter,
                  image: AssetImage(AppImageAsset.profileImage),
                  scale: .5),
            ),
            child: Image.asset(
              AppImageAsset.profileCameraImage,
              fit: BoxFit.contain,
              width: 100,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.edit, color: AppColor.primarycolor),
              Text(
                'Edit Profile',
                style: TextStyle(color: AppColor.primarycolor),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            'Hi there Emilia!',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          InkWell(
            onTap: () {
              provider.signOut();
              FirebaseAuth.instance.authStateChanges().listen(
                (User? user) {
                  if (user == null) {
                    Navigator.of(context).pushReplacementNamed('loginScreen');
                  }
                },
              );
            },
            child: Text(
              'Sign Out',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
