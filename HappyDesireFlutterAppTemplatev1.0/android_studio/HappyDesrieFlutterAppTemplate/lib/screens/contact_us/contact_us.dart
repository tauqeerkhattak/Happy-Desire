import 'package:flutter/material.dart';
import 'components/body.dart';

class ContactUsScreen extends StatelessWidget {
  static String routeName = "/contact-us";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
