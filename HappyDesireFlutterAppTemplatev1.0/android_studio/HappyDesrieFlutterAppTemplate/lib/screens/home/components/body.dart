import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/components/list_title_row.dart';
import 'package:shop_app/components/search_text_field.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/dummy_data.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/screens/home/components/home_featured_list_item.dart';
import 'package:shop_app/screens/home/components/home_special_list_item.dart';
import 'package:shop_app/screens/notification/notification_screen.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscroll) {
          overscroll.disallowGlow();
          return;
        },
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: getProportionateScreenHeight(15)),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Card(
                        elevation: 5,
                        shadowColor: kCardBackgroundColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: SearchTextField(label: 'Search Product'),
                      ),
                    ),
                    SizedBox(width: getProportionateScreenWidth(10)),
                    Stack(
                      children: [
                        InkWell(
                          onTap: () => Navigator.pushNamed(
                              context, CartScreen.routeName),
                          child: Card(
                            elevation: 5,
                            shadowColor: kCardBackgroundColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                'assets/icons/Shopping Cart Home.png',
                                color: kPrimaryColor,
                                width: 25,
                              ),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.topRight,
                            child: CircleAvatar(
                              backgroundColor: kPrimaryColor,
                              child: FittedBox(
                                child: Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Text(
                                    '5',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              radius: 9,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: getProportionateScreenWidth(10)),
                    InkWell(
                      onTap: () => Navigator.pushNamed(
                          context, NotificationScreen.routeName),
                      child: Card(
                        elevation: 5,
                        shadowColor: kCardBackgroundColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            'assets/icons/Notification.png',
                            color: kPrimaryColor,
                            width: 25,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(15),
                ),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    width: double.infinity,
                    height: getProportionateScreenHeight(160),
                    child: Carousel(
                      images: DummyData.dummyBannerImages,
                      dotSize: 4.0,
                      dotSpacing: 15.0,
                      dotColor: kPrimaryColor,
                      indicatorBgPadding: 5.0,
                      borderRadius: true,
                    )),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              ListTitleRow(title: 'Special for you', suffix: 'See More'),
              SizedBox(height: getProportionateScreenHeight(15)),
              Padding(
                padding: EdgeInsets.only(
                  left: getProportionateScreenWidth(15),
                ),
                child: Container(
                  height: getProportionateScreenHeight(128),
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: DummyData.dummySpecialCategories.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return HomeSpecialListItem(
                          category: DummyData.dummySpecialCategories[index],
                        );
                      }),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(15)),
              ListTitleRow(title: 'Featured Products', suffix: 'See More'),
              SizedBox(height: getProportionateScreenHeight(20)),
              Padding(
                padding: EdgeInsets.only(
                  left: getProportionateScreenWidth(15),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(
                        DummyData.dummyProducts.length,
                        (index) {
                          return HomeFeaturedListItem(
                            product: DummyData.dummyProducts[index],
                          );
                        },
                      ),
                      SizedBox(width: getProportionateScreenWidth(20)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              ListTitleRow(title: 'Best Selling Products', suffix: 'See More'),
              SizedBox(height: getProportionateScreenHeight(15)),
              Padding(
                padding: EdgeInsets.only(
                  left: getProportionateScreenWidth(15),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(
                        DummyData.dummyProducts.length,
                        (index) {
                          return HomeFeaturedListItem(
                            product: DummyData.dummyProducts[index],
                          );
                        },
                      ),
                      SizedBox(width: getProportionateScreenWidth(20)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenWidth(30)),
            ],
          ),
        ),
      ),
    );
  }

  TextFormField buildSearchTextFormField() {
    OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: Colors.transparent),
      gapPadding: 10,
    );

    return TextFormField(
      decoration: InputDecoration(
        hintText: "Search Product",
        alignLabelWithHint: false,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        border: outlineInputBorder,
        contentPadding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(4),
        ),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Icon(Icons.search, color: kPrimaryColor),
        ),
      ),
    );
  }
}
