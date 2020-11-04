import 'package:flutter/material.dart';
import 'package:shop_app/screens/sign_up/sign_up_screen.dart';

import '../constants.dart';
import '../size_config.dart';

class AccountText extends StatelessWidget {
  final String question, action;

  AccountText({
    Key key,
    this.question,
    this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          question,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
          ),
        ),
        GestureDetector(
          onTap: () {
            switch (action) {
              case 'Sign in':
                Navigator.pop(context);
                break;
              case 'Sign Up':
                Navigator.pushNamed(context, SignUpScreen.routeName);
                break;
              default:
                Text('Something went wrong!');
            }
          },
          child: Text(
            action,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(17),
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
