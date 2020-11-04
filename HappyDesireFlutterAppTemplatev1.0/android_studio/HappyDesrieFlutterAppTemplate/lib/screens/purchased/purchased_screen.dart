import 'package:flutter/material.dart';
import 'components/body.dart';

class PurchasedScreen extends StatelessWidget {
  static String routeName = "/purchased";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
