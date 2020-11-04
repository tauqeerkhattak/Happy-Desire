import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/add_review/add_review_screen.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: SizeConfig.screenHeight * 0.87,
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    Stack(
                      children: [
                        Container(
                          color: Colors.grey.shade100,
                          height: SizeConfig.screenHeight * 0.39,
                          child: Image.asset(
                            'assets/images/Men Cotton T-shirt.jpg',
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                child: IconButton(
                                  onPressed: () => Navigator.pop(context),
                                  icon: Icon(
                                    Icons.arrow_back_ios,
                                    size: 18,
                                    color: Colors.black54,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.white,
                                        blurRadius: 1,
                                        spreadRadius: 0.5)
                                  ],
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: SizeConfig.screenHeight * 0.345),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(35),
                                topRight: Radius.circular(35))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    '\$22.75',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                        color: kPrimaryColor),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '\$32.5',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.grey.shade400,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 2),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 0.5, color: Colors.red)),
                                    child: Text(
                                      '-32% Off',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  IconButton(
                                    onPressed: () => null,
                                    iconSize: 28,
                                    icon: Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Basic Men T-shirt 100% Cotton',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: SizeConfig.screenHeight * 0.02),
                              Text(
                                'Description',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Text(
                                  'Lorem ipsum dolor sit amet, consectetur sit adipiscing elit ut, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14,
                                      height: 2,
                                      color: Colors.grey),
                                ),
                              ),
                              SizedBox(height: SizeConfig.screenHeight * 0.02),
                              Text(
                                'Color',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: SizeConfig.screenHeight * 0.02),
                              Container(
                                height: 40,
                                child: ListView(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    colorListItem(Colors.red.shade400, true),
                                    colorListItem(
                                        Colors.black.withOpacity(0.8), false),
                                    colorListItem(Colors.blue.shade300, false),
                                  ],
                                ),
                              ),
                              SizedBox(height: SizeConfig.screenHeight * 0.02),
                              Text(
                                'Size',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: SizeConfig.screenHeight * 0.02),
                              Container(
                                height: 40,
                                child: ListView(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    sizeListItem('S', false),
                                    sizeListItem('M', true),
                                    sizeListItem('L', false),
                                    sizeListItem('XL', false),
                                  ],
                                ),
                              ),
                              SizedBox(height: SizeConfig.screenHeight * 0.02),
                              Text(
                                'Quantity',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: SizeConfig.screenHeight * 0.02),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    child: Icon(Icons.remove),
                                    backgroundColor: Colors.grey.shade200,
                                    foregroundColor: Colors.black26,
                                    radius: 15,
                                  ),
                                  SizedBox(
                                      width: SizeConfig.screenWidth * 0.05),
                                  Text('1'),
                                  SizedBox(
                                      width: SizeConfig.screenWidth * 0.05),
                                  CircleAvatar(
                                    child: Icon(Icons.add),
                                    backgroundColor: Colors.grey.shade200,
                                    foregroundColor: Colors.black54,
                                    radius: 15,
                                  )
                                ],
                              ),
                              SizedBox(height: SizeConfig.screenHeight * 0.02),
                              Row(
                                children: [
                                  Text(
                                    'Reviews',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: InkWell(
                                      onTap: () => Navigator.pushNamed(
                                          context, AddReviewScreen.routeName),
                                      child: Text(
                                        'write a review',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: kPrimaryColor),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: SizeConfig.screenHeight * 0.02),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '4.5',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 26),
                                  ),
                                  SizedBox(
                                      width: SizeConfig.screenWidth * 0.02),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: RatingBar(
                                      initialRating: 4.5,
                                      minRating: 1,
                                      itemSize: 22,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      glow: false,
                                      itemPadding:
                                          EdgeInsets.symmetric(horizontal: 1.0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: SizeConfig.screenHeight * 0.02),
                              ListView(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                children: [
                                  reviewListItem('John Doe', 4.5, '22 May 2020',
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
                                  reviewListItem(
                                      'Mary Smith',
                                      3.8,
                                      '24 June 2020',
                                      'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat'),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.screenHeight * 0.04,
                        vertical: SizeConfig.screenHeight * 0.01),
                    child: DefaultButton(
                      text: 'Add to Cart',
                      press: () => null,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget colorListItem(Color color, bool ticked) {
    return Padding(
      padding: const EdgeInsets.only(right: 7),
      child: Container(
        width: 40,
        height: 40,
        child: ticked
            ? Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                  ),
                  Center(
                    child: Icon(
                      Icons.done,
                      color: Colors.white,
                      size: 22,
                    ),
                  ),
                ],
              )
            : Container(),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
      ),
    );
  }

  Widget sizeListItem(String size, bool ticked) {
    return Padding(
      padding: const EdgeInsets.only(right: 7),
      child: Container(
        width: 40,
        height: 40,
        child: ticked
            ? Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.all(
                        Radius.circular(7),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      size,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            : Center(
                child: Text(
                  size,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 0.5, color: Colors.grey.shade400),
          borderRadius: BorderRadius.all(
            Radius.circular(7),
          ),
        ),
      ),
    );
  }

  Widget reviewListItem(String name, double rate, String date, String comment) {
    return Padding(
      padding: EdgeInsets.only(bottom: SizeConfig.screenHeight * 0.02),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.5),
              ),
              SizedBox(width: SizeConfig.screenWidth * 0.02),
              Text(
                date,
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
            ],
          ),
          Text(
            '$rate',
            style: TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                height: 2,
                fontSize: 14),
          ),
          Text(
            comment,
            style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                height: 2,
                fontSize: 12),
          ),
        ],
      ),
    );
  }
}
