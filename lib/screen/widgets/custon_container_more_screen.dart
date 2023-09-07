import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/constant/image_assets.dart';

class CustomContainerMoreScreen extends StatelessWidget {
  const CustomContainerMoreScreen({
    super.key, required this.imageName, required this.title,
  });

  final String imageName;
  final String title;



  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppImageAsset.backgroundIcons),
                  fit: BoxFit.contain),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Image.asset(imageName),
            ),
          ),
          SizedBox(width: 20),
          Text(title,style: TextStyle(fontSize: 20),),
          Spacer(),
          Icon(CupertinoIcons.right_chevron),
        ],
      ),
    );
  }
}
