import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/product_details/product_details_screen.dart';
import 'package:shop_app/size_config.dart';

class CheckoutCartProductItem extends StatelessWidget {
  final Product product;

  const CheckoutCartProductItem({
    Key key,
    this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, ProductDetailsScreen.routeName),
      child: Padding(
        padding: EdgeInsets.only(bottom: 5),
        child: SizedBox(
          width: getProportionateScreenWidth(110),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: Card(
                    margin: EdgeInsets.fromLTRB(1, 0, 1, 5),
                    elevation: 5,
                    shadowColor: kCardBackgroundColor,
                    clipBehavior: Clip.hardEdge,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(
                      product.image,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
