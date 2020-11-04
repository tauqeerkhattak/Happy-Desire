import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/product_details/product_details_screen.dart';
import 'package:shop_app/size_config.dart';

class ProductListItem extends StatelessWidget {
  final Product product;
  final Function removeFunction;

  const ProductListItem({
    Key key,
    this.product,
    this.removeFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, ProductDetailsScreen.routeName),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(8),
          vertical: getProportionateScreenHeight(6),
        ),
        child: Container(
          width: double.infinity,
          child: Card(
            elevation: 5,
            shadowColor: kCardBackgroundColor,
            margin: EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Container(
                  width: 95,
                  height: 95,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        product.image,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: getProportionateScreenWidth(11)),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          product.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              product.discountPrice != 0.0
                                  ? '\$${product.discountPrice}'
                                  : '\$${product.price}',
                              style: TextStyle(
                                  fontSize: 15, color: kSecondaryColor),
                            ),
                            product.discountPrice != 0.0
                                ? SizedBox(
                                    width: getProportionateScreenWidth(8))
                                : Container(),
                            product.discountPrice != 0.0
                                ? Text(
                                    '\$${product.price}',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  )
                                : Container(),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 25),
                              child: IconButton(
                                onPressed: () => null,
                                splashRadius: 20,
                                icon: Icon(
                                  Icons.add_shopping_cart,
                                  color: kPrimaryColor,
                                  size: 22,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
