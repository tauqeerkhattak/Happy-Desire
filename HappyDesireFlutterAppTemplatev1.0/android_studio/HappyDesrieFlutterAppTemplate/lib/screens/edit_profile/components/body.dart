import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/components/card_custom_text_field.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 26),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/Profile Image.jpg'),
                          maxRadius: 52,
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 75),
                            child: Container(
                              width: 40,
                              height: 40,
                              child: Padding(
                                padding: const EdgeInsets.all(1),
                                child: IconButton(
                                  onPressed: () => null,
                                  splashRadius: 30,
                                  icon: ImageIcon(
                                    AssetImage('assets/icons/Camera.png'),
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: kBackgroundColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(16)),
                ],
              ),
            ),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                CardCustomTextField(
                  label: 'Name',
                ),
                SizedBox(height: getProportionateScreenHeight(8)),
                CardCustomTextField(
                  label: 'Email',
                ),
                SizedBox(height: getProportionateScreenHeight(8)),
                CardCustomTextField(
                  label: 'Phone',
                ),
                SizedBox(height: getProportionateScreenHeight(8)),
                CardCustomTextField(
                  label: 'Country',
                ),
                SizedBox(height: getProportionateScreenHeight(23)),
              ],
            ),
            DefaultButton(
              text: 'Save',
              press: () => null,
            )
          ],
        ),
      ),
    );
  }
}
