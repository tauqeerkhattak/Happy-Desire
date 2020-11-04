import 'package:flutter/material.dart';

import 'components/body.dart';

class VerificationScreen extends StatelessWidget {
  static String routeName = "/verification";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/Splash Background.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: Body(),
      ),
    );
  }
}
