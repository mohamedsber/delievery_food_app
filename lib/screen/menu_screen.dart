import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/constant/colors.dart';
import 'package:food_delivery_app/constant/image_assets.dart';
import 'package:food_delivery_app/data/model/product_model.dart';
import 'package:food_delivery_app/data/static/static.dart';
import 'package:food_delivery_app/screen/desserts_screen.dart';
import 'package:food_delivery_app/screen/widgets/home/custom_search_field.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImageAsset.menuBackground),
          scale: .92,
          alignment: Alignment.centerLeft,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Menu', style: TextStyle(fontSize: 27)),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart),
                ),
              ],
            ),
          ),
          CustomSerchField(),
          SizedBox(height: 17),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  mealList.length,
                  (i) => Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 110,
                        margin: EdgeInsets.only(bottom: 20),
                        padding: EdgeInsets.only(left: 55, right: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 50,
                              color: Colors.grey.withOpacity(.1),
                              offset: Offset(1, 1),
                            ),
                          ],
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                                bottomLeft: Radius.circular(40),
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                          ),
                          onTap: (){
                            if(i==2){
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DessertScreen()));
                            }
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                bottomLeft: Radius.circular(40),
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 60),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(menuList[i].title!,
                                        style: TextStyle(
                                            fontSize: 27,
                                            fontWeight: FontWeight.bold)),
                                    Text(menuList[i].itemsNum!,
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.grey)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        bottom: 0,
                        right: 10,
                        child: Icon(
                          CupertinoIcons.chevron_right_circle_fill,
                          size: 50,
                          opticalSize: 20,
                          weight: 20,
                          color: AppColor.primarycolor,
                          
                        ),
                      ),
                      Positioned(
                        top: 0,
                        bottom: 0,
                        left: 10,
                        child: Image.asset(menuList[i].image!,
                            fit: BoxFit.contain, width: 100),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
