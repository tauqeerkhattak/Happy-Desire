import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/dummy_data.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/cart/components/cart_list_item.dart';
import 'package:shop_app/screens/checkout/checkout_screen.dart';

import '../../../size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Product> products;

  @override
  void initState() {
    super.initState();

    products = DummyData.dummyProductOrder;
  }

  removeCartProduct(int index) {
    setState(() {
      products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: products != null
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '${products.length} Products',
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: getProportionateScreenHeight(8)),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return Slidable(
                        actionPane: SlidableDrawerActionPane(),
                        actionExtentRatio: 0.25,
                        child: CartListItem(
                          products: products[index],
                        ),
                        secondaryActions: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 10),
                            child: Container(
                              color: Colors.white,
                              height: double.infinity,
                              child: Card(
                                elevation: 5,
                                margin: EdgeInsets.all(0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                child: IconSlideAction(
                                  color: Colors.transparent,
                                  icon: Icons.delete,
                                  foregroundColor: kPrimaryColor,
                                  onTap: () => removeCartProduct(index),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenHeight(23),
                      vertical: getProportionateScreenHeight(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  checkoutDetail('Sub Total', 150),
                                  checkoutDetail('Shipping', 20),
                                  Divider(
                                    height: 12,
                                    thickness: 0.5,
                                  ),
                                  checkoutDetail('Total', 170),
                                ],
                              ),
                            ),
                            SizedBox(width: getProportionateScreenWidth(22)),
                            Expanded(
                              child: DefaultButton(
                                text: 'Check Out',
                                press: () => Navigator.pushNamed(
                                    context, CheckoutScreen.routeName),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icons/Shopping Cart.png',
                  width: getProportionateScreenWidth(65),
                  color: kPrimaryColor,
                ),
                SizedBox(height: getProportionateScreenWidth(18)),
                Text(
                  'Your Cart is Empty!',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: getProportionateScreenWidth(8)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Text(
                    'You haven\'t added anything to your cart yet!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                )
              ],
            ),
    );
  }

  Widget checkoutDetail(String title, double amount) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14.5,
          ),
        ),
        Text(
          '\$$amount',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
