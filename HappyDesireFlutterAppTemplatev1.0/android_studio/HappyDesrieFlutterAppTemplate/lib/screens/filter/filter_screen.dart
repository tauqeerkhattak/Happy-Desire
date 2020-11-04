import 'package:flutter/material.dart';

import 'components/body.dart';

class FilterScreen extends StatelessWidget {
  static String routeName = "/filter";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Filter'),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
