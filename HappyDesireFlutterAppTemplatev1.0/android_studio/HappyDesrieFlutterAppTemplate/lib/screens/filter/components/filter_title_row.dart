import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

class FilterTitleRow extends StatelessWidget {
  final String title;

  const FilterTitleRow({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: getProportionateScreenWidth(18),
          color: Colors.black87,
          fontWeight: FontWeight.w600),
    );
  }
}
