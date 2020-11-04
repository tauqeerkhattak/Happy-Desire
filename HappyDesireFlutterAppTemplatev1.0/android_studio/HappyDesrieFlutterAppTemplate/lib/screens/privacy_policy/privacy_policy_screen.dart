import 'package:flutter/material.dart';
import 'components/body.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  static String routeName = "/privacy-policy";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Policy'),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
