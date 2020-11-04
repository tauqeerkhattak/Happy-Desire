import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Write a review for "Basic Men T-shirt 100% Cotton',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(16)),
                    Text(
                      'Your Rating',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(8)),
                    RatingBar(
                      initialRating: 0,
                      minRating: 1,
                      itemSize: 28,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      glow: false,
                      itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    SizedBox(height: getProportionateScreenHeight(16)),
                    Text(
                      'Your Review',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(8)),
                    Card(
                      elevation: 5,
                      shadowColor: kCardBackgroundColor,
                      margin: EdgeInsets.all(0),
                      child: TextFormField(
                        maxLines: 5,
                        cursorColor: kPrimaryColor,
                        decoration: InputDecoration(
                          hintText: 'Write your review here...',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: getProportionateScreenWidth(8),
                            horizontal: getProportionateScreenWidth(11),
                          ),
                          // If  you are using latest version of flutter then label text and hint text shown like this
                          // if you r using flutter less then 1.20.* then maybe this is not working properly
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                        ),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(16)),
                    Text(
                      'Photo',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(8)),
                    Container(
                      width: 90,
                      height: 90,
                      child: Card(
                        elevation: 5,
                        shadowColor: kCardBackgroundColor,
                        child: Icon(Icons.add),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(32)),
                    DefaultButton(
                      press: () => null,
                      text: 'Submit',
                    ),
                    SizedBox(height: getProportionateScreenHeight(16)),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
