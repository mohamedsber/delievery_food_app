import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/constant/image_assets.dart';
import 'package:food_delivery_app/screen/widgets/custon_container_more_screen.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('More', style: TextStyle(fontSize: 27)),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart),
                ),
              ],
            ),
            SizedBox(height: 20),
            CustomContainerMoreScreen(
              imageName: AppImageAsset.payment,
              title: 'Payment Details',
            ),
            SizedBox(height: 10),
            CustomContainerMoreScreen(
              imageName: AppImageAsset.orders,
              title: 'My Orders',
            ),
            SizedBox(height: 10),
            CustomContainerMoreScreen(
              imageName: AppImageAsset.notifications,
              title: 'Notifications',
            ),
            SizedBox(height: 10),
            CustomContainerMoreScreen(
              imageName: AppImageAsset.index,
              title: 'Index',
            ),
            SizedBox(height: 10),
            CustomContainerMoreScreen(
              imageName: AppImageAsset.about,
              title: 'About Us',
            ),
          ],
        ),
      ),
    );
  }
}
