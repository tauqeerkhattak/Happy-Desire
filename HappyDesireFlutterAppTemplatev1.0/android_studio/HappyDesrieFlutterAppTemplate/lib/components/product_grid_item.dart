import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/product_details/product_details_screen.dart';
import 'package:shop_app/size_config.dart';

class ProductGridItem extends StatelessWidget {
  final Product product;

  const ProductGridItem({
    Key key,
    this.product,
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
        child: Card(
          elevation: 5,
          shadowColor: kCardBackgroundColor,
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 135,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
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
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(6)),
                      Row(
                        children: [
                          Text(
                            product.discountPrice != 0.0
                                ? '\$${product.discountPrice}'
                                : '\$${product.price}',
                            style: TextStyle(
                              fontSize: 15,
                              color: kSecondaryColor,
                            ),
                          ),
                          product.discountPrice != 0.0
                              ? SizedBox(
                                  width: getProportionateScreenWidth(8),
                                )
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
                          Expanded(
                            child: GestureDetector(
                              onTap: () => null,
                              child: Icon(
                                Icons.add_shopping_cart,
                                color: kPrimaryColor,
                                size: 21,
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
    );
  }
}
