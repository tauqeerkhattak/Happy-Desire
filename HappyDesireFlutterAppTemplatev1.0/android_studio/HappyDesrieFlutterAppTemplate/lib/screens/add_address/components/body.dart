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
              Text('Enter your Shipping Address Information'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CardCustomTextField(
                          label: 'First Name',
                        ),
                        SizedBox(height: getProportionateScreenHeight(8)),
                        CardCustomTextField(
                          label: 'Last Name',
                        ),
                        SizedBox(height: getProportionateScreenHeight(8)),
                        CardCustomTextField(
                          label: 'Country',
                        ),
                        SizedBox(height: getProportionateScreenHeight(8)),
                        CardCustomTextField(
                          label: 'City / Town',
                        ),
                        SizedBox(height: getProportionateScreenHeight(8)),
                        CardCustomTextField(
                          label: 'Address 1',
                        ),
                        SizedBox(height: getProportionateScreenHeight(8)),
                        CardCustomTextField(
                          label: 'Address 2',
                        ),
                        SizedBox(height: getProportionateScreenHeight(8)),
                        CardCustomTextField(
                          label: 'Postcode',
                        ),
                        SizedBox(height: getProportionateScreenHeight(8)),
                        CardCustomTextField(
                          label: 'Phone',
                        ),
                        SizedBox(height: getProportionateScreenHeight(8)),
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
