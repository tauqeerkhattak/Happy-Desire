import 'package:flutter/material.dart';

import 'components/body.dart';

class OrdersScreen extends StatelessWidget {
  static String routeName = "/orders";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: Text('My Orders'),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
