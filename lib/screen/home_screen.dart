import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/screen/widgets/custom_bottom_navi_bar.dart';
import 'package:food_delivery_app/screen/widgets/home/custom_grid_view_home.dart';
import 'package:food_delivery_app/screen/widgets/home/custom_search_field.dart';

import '../constant/colors.dart';
import '../data/static/static.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Good morning Mohamed!',
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w300,
                                color: AppColor.primaryFontColor,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.shopping_cart),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Delievery to',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                            color: AppColor.primaryFontColor,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Current location',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: AppColor.primaryFontColor,
                              ),
                            ),
                            SizedBox(width: 40),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                CupertinoIcons.chevron_down,
                                color: AppColor.primarycolor,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        CustomSerchField(),
                        CustomGridViewHomeScreen(
                          height: 130,
                          mainAxisExtent: 95,
                          itemCount: mealList.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, i) => Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: .2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  mealList[i].image!,
                                  scale: 1.2,
                                ),
                                SizedBox(height: 15),
                                Text(
                                  mealList[i].title!,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w900),
                                ),
                                /*Text(
                          productList[i].rate!,
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                        ),*/
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Popular Restaurents',
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w300,
                                color: AppColor.primaryFontColor,
                              ),
                            ),
                            InkWell(
                              child: Text(
                                'View All',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.primarycolor,
                                ),
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 13),
                CustomGridViewHomeScreen(
                  height: 400,
                  mainAxisExtent: 260,
                  itemCount: popularList.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (_, i) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          popularList[i].image!,
                          fit: BoxFit.contain,
                          //scale: .8,
                        ),
                        SizedBox(height: 15),
                        Text(
                          popularList[i].title!,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w900),
                        ),
                        Text(
                          popularList[i].rate!,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
