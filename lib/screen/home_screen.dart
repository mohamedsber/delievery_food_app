import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/screen/widgets/home/custom_grid_view_home.dart';
import 'package:food_delivery_app/screen/widgets/home/custom_search_field.dart';
import '../constant/colors.dart';
import '../data/static/static.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 100,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Good morning Emilia!',
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                              color: AppColor.primaryFontColor,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.shopping_cart),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'Delievery to',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: AppColor.primaryFontColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
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
                    ),
                    SizedBox(height: 10),
                    CustomSerchField(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: CustomGridViewHomeScreen(
                        height: 130,
                        mainAxisExtent: 110,
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
                                scale: 1,
                              ),
                              SizedBox(height: 15),
                              Text(
                                mealList[i].title!,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w900),
                              ),
                              /*Text(
                                productList[i].rate!,
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                              ),*/
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 35),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
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
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: List.generate(
                popularList.length,
                (i) => Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        popularList[i].image!,
                        fit: BoxFit.contain,
                        scale: .915,
                        //scale: .8,
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          popularList[i].title!,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w900),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: AppColor.primarycolor,
                          ),
                          Text(
                            popularList[i].rate!,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColor.primarycolor,
                            ),
                          ),
                          Text(
                            '  (124 ratings) Café',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColor.placeholderColor,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 3),
                              width: 3,
                              height: 3,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColor.primarycolor,
                              ),
                            ),
                          ),
                          Text(
                            'Western Food',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColor.placeholderColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Most Popular',
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
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CustomGridViewHomeScreen(
                height: 200,
                mainAxisExtent: 250,
                itemCount: mostPopularList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, i) => Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: .2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        mostPopularList[i].image!,
                        scale: 1,
                      ),
                      SizedBox(height: 15),
                      Text(
                        mostPopularList[i].title!,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w900),
                      ),
                      Row(
                        children: [
                          Text(
                            'Café',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColor.placeholderColor,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 3),
                              width: 3,
                              height: 3,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColor.primarycolor,
                              ),
                            ),
                          ),
                          Text(
                            'Western Food',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColor.placeholderColor,
                            ),
                          ),
                          Icon(
                            Icons.star,
                            size: 17,
                            color: AppColor.primarycolor,
                          ),
                          Text(
                            popularList[i].rate!,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColor.primarycolor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Items',
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
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: List.generate(
                  popularList.length,
                  (i) => Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          recentItems[i].image!,
                          fit: BoxFit.contain,
                          scale: .915,
                          //scale: .8,
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                recentItems[i].title!,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w900),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Café',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: AppColor.placeholderColor,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 6),
                                        child: Container(
                                          padding:
                                              EdgeInsets.symmetric(horizontal: 3),
                                          width: 3,
                                          height: 3,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: AppColor.primarycolor,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Western Food',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: AppColor.placeholderColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                    Icons.star,
                                    color: AppColor.primarycolor,
                                  ),
                                  Text(
                                    recentItems[i].rate!,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColor.primarycolor,
                                    ),
                                  ),
                                  Text(
                                    '  (124 ratings)',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColor.placeholderColor,
                                    ),
                                  ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 100)
          ],
        ),
      ),
    );
  }
}
