import 'package:flutter/material.dart';
import 'components/body.dart';

class NotificationScreen extends StatelessWidget {
  static String routeName = "/notification";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
