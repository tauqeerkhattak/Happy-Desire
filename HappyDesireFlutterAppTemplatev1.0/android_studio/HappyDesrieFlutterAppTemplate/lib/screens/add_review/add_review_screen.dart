import 'package:flutter/material.dart';

import 'components/body.dart';

class AddReviewScreen extends StatelessWidget {
  static String routeName = "/add-review";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Write a Review'),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
