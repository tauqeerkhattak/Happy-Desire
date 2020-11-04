import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/components/card_custom_text_field.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Enter your Card Information'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CardCustomTextField(
                          label: 'Bank Name',
                        ),
                        SizedBox(height: getProportionateScreenHeight(8)),
                        CardCustomTextField(
                          label: 'Card Number',
                        ),
                        SizedBox(height: getProportionateScreenHeight(8)),
                        CardCustomTextField(
                          label: 'Expiry Month',
                        ),
                        SizedBox(height: getProportionateScreenHeight(8)),
                        CardCustomTextField(
                          label: 'Expiry Year',
                        ),
                        SizedBox(height: getProportionateScreenHeight(8)),
                        CardCustomTextField(
                          label: 'Card Holder Name',
                        ),
                        SizedBox(height: getProportionateScreenHeight(15)),
                      ],
                    ),
                  ],
                ),
              ),
              DefaultButton(
                text: 'Add',
                press: () => null,
              )
            ],
          ),
        ),
      ),
    );
  }
}
