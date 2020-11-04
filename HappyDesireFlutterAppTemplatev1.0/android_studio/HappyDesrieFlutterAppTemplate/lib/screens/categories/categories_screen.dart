import 'package:flutter/material.dart';
import 'package:shop_app/screens/categories/components/body.dart';

import 'components/body.dart';

class CategoriesScreen extends StatefulWidget {
  static String routeName = "/categories";

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Categories'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Body(),
    );
  }
}
