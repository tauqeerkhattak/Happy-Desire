import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/order.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/product_details/product_details_screen.dart';
import 'package:shop_app/size_config.dart';

import '../../../dummy_data.dart';

class HomeFeaturedListItem extends StatefulWidget {
  final Product product;

  const HomeFeaturedListItem({
    Key key,
    this.product,
  }) : super(key: key);

  @override
  _HomeFeaturedListItemState createState() => _HomeFeaturedListItemState();
}

class _HomeFeaturedListItemState extends State<HomeFeaturedListItem> {
  bool isFavorite = false;
  bool isInCart = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(120),
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
                clipBehavior: Clip.antiAliasWithSaveLayer,
                margin: EdgeInsets.all(0),
                elevation: 5,
                shadowColor: kCardBackgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(
                          context, ProductDetailsScreen.routeName),
                      child: Image.asset(
                        widget.product.image,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () {
                          DateTime dt = DateTime.now();
                          String now = '${dt.day}/${dt.month}/${dt.year}';
                          setState(() {
                            DummyData.dummyProductOrder.add(
                              Product(
                                id: widget.product.id,
                                name: widget.product.name,
                                image: widget.product.image,
                                price: widget.product.price,
                                discountPrice: widget.product.discountPrice,
                                quantity: widget.product.quantity,
                              ),
                            );
                          });
                        },
                        child: Card(
                          clipBehavior: Clip.hardEdge,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(0),
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                              ),
                              color: Colors.white,
                            ),
                            child: !isInCart
                                ? Icon(
                              Icons.add_shopping_cart_outlined,
                              color: kPrimaryColor,
                            )
                                : Icon(
                              Icons.add_shopping_cart,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                        },
                        child: Card(
                          clipBehavior: Clip.hardEdge,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                            ),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(0),
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                              ),
                              color: Colors.white,
                            ),
                            child: !isFavorite
                                ? Icon(
                                    Icons.favorite_border,
                                    color: kPrimaryColor,
                                  )
                                : Icon(
                                    Icons.favorite,
                                    color: kPrimaryColor,
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              widget.product.name,
              softWrap: true,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.5,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              children: [
                Text(
                  '\$${widget.product.price}',
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(16),
                    fontWeight: FontWeight.w600,
                    color: kPrimaryColor,
                  ),
                ),
                SizedBox(width: SizeConfig.screenWidth * 0.03),
                (widget.product.discountPrice != 0)
                    ? Text(
                        '\$${widget.product.discountPrice}',
                        style: TextStyle(
                            fontSize: 14.5,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough),
                      )
                    : Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
