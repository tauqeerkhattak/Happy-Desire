import 'package:flutter/material.dart';
import 'components/body.dart';

class LanguageScreen extends StatelessWidget {
  static String routeName = "/language";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language'),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
