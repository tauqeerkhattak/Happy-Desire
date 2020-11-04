import 'package:flutter/material.dart';
import 'package:shop_app/screens/wish_list/components/body.dart';

import 'components/body.dart';

class WishListScreen extends StatefulWidget {
  static String routeName = "/wish-list";

  @override
  _WishListScreenState createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Wish List'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Body(),
    );
  }
}
