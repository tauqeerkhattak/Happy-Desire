import 'package:flutter/material.dart';

import 'components/body.dart';

class ProductDetailsScreen extends StatelessWidget {
  static String routeName = "/product-details";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
