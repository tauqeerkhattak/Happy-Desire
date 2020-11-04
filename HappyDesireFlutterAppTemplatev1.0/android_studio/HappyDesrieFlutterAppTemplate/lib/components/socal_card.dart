import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../size_config.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key key,
    this.icon,
    this.press,
  }) : super(key: key);

  final String icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Card(
        shape: CircleBorder(),
        elevation: 2,
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(10),
          ),
          padding: EdgeInsets.all(
            getProportionateScreenWidth(10),
          ),
          height: getProportionateScreenHeight(55),
          width: getProportionateScreenWidth(55),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(icon),
        ),
      ),
    );
  }
}
