import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/tabs/tabs_screen.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: kPrimaryColor,
          child: Center(
            child: Icon(
              Icons.check,
              color: Colors.white,
              size: 38,
            ),
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(20)),
        Text(
          'Payment Successful!',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 35,
            vertical: 10,
          ),
          child: Text(
            'Your order will be processed and sent to you as soon as possible',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(20)),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: DefaultButton(
            text: 'Continue Shopping',
            press: () => Navigator.popUntil(
              context,
              ModalRoute.withName(TabsScreen.routeName),
            ),
          ),
        ),
      ],
    );
  }
}
