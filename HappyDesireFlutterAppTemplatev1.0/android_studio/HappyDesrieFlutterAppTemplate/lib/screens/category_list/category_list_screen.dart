import 'package:flutter/material.dart';
import 'package:shop_app/screens/category_list/components/body.dart';

class CategoryListScreen extends StatelessWidget {
  static String routeName = "/categories";

  final String name;

  const CategoryListScreen({
    Key key,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(name),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
