import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/size_config.dart';

class CartListItem extends StatelessWidget {
  final Product products;
  final Function removeFunction;

  const CartListItem({
    Key key,
    this.products,
    this.removeFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 15),
      child: Container(
        width: double.infinity,
        child: Card(
          elevation: 5,
          shadowColor: kCardBackgroundColor,
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            child: Row(
              children: [
                Container(
                  width: 90,
                  height: 95,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  child: Image.asset(
                    products.image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
                SizedBox(width: SizeConfig.screenWidth * 0.04),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        products.name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: SizeConfig.screenHeight * 0.005),
                      Row(
                        children: [
                          Text(
                            products.discountPrice != 0.0
                                ? '\$${products.discountPrice}'
                                : '\$${products.price}',
                            style: TextStyle(
                              fontSize: 15,
                              color: kPrimaryColor,
                            ),
                          ),
                          products.discountPrice != 0.0
                              ? SizedBox(width: SizeConfig.screenWidth * 0.02)
                              : Container(),
                          products.discountPrice != 0.0
                              ? Text(
                                  '\$${products.price}',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                )
                              : Container(),
                        ],
                      ),
                      SizedBox(height: SizeConfig.screenHeight * 0.005),
//                    QuantityPicker(),
                    ],
                  ),
                ),
                SizedBox(width: SizeConfig.screenWidth * 0.01),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.add,
                          size: 20,
                        ),
                        constraints: BoxConstraints(maxWidth: 20),
                        onPressed: () => null,
                        padding: EdgeInsets.all(0),
                        splashRadius: 15,
//                        backgroundColor: Colors.white,
//                        foregroundColor: Colors.black54,
//                        radius: 13,
                      ),
                      SizedBox(height: SizeConfig.screenHeight * 0.002),
                      Text('1', style: TextStyle(fontSize: 16)),
                      SizedBox(height: SizeConfig.screenHeight * 0.002),
                      IconButton(
                        icon: Icon(
                          Icons.remove,
                          size: 20,
                          color: Colors.black45,
                        ),
                        constraints: BoxConstraints(maxWidth: 20),
                        onPressed: () => null,
                        padding: EdgeInsets.all(0),
                        splashRadius: 15,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
