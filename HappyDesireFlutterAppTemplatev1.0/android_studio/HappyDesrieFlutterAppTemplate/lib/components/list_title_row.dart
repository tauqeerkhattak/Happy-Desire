import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

class ListTitleRow extends StatelessWidget {
  final String title;
  final String suffix;
  final Function function;

  const ListTitleRow({
    Key key,
    this.title,
    this.suffix,
    this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(15),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
              color: Colors.black87,
              fontWeight: FontWeight.w600,
            ),
          ),
          InkWell(
            onTap: function,
            child: Text(
              suffix,
              style: TextStyle(
                fontSize: 14.5,
                color: Colors.grey.shade400,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
