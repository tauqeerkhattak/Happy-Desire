import 'package:flutter/material.dart';

import 'components/body.dart';

class AddCardScreen extends StatelessWidget {
  static String routeName = "/add_card";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Card'),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
