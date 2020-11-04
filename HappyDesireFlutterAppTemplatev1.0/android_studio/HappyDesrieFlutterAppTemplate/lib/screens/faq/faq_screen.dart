import 'package:flutter/material.dart';

import 'components/body.dart';

class FaqScreen extends StatelessWidget {
  static String routeName = "/faq";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQ'),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
