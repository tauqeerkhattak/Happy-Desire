import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_dialog.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/components/list_title_row.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/dummy_data.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/address/address_screen.dart';
import 'package:shop_app/screens/checkout/components/checkout_card_product_item.dart';
import 'package:shop_app/screens/purchased/purchased_screen.dart';
import 'package:shop_app/screens/shipping/shipping_screen.dart';

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

    products = DummyData.dummyProducts;
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
              children: [
                ListTitleRow(
                  title: 'Your Address',
                  suffix: 'Change Address',
                  function: () {
                    Navigator.pushNamed(context, AddressScreen.routeName);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 15,
                  ),
                  child: Card(
                    margin: EdgeInsets.all(0),
                    elevation: 5,
                    shadowColor: kCardBackgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            DummyData.dummyAddresses[0].title,
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            DummyData.dummyAddresses[0].subtitle,
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ListTitleRow(
                  title: 'Shipping Mode',
                  suffix: 'Change Mode',
                  function: () =>
                      Navigator.pushNamed(context, ShippingScreen.routeName),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 15,
                  ),
                  child: Container(
                    child: Card(
                      margin: EdgeInsets.all(0),
                      elevation: 5,
                      shadowColor: kCardBackgroundColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Flat Rate'),
                            Text('\$20.0'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                ListTitleRow(
                  title: 'Your Cart',
                  suffix: 'View All',
                  function: () {
                    Navigator.pop(context);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(15),
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ...List.generate(
                            DummyData.dummyProducts.length,
                            (index) {
                              return CheckoutCartProductItem(
                                product: DummyData.dummyProducts[index],
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ListTitleRow(title: 'Payment Method', suffix: ''),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 15,
                  ),
                  child: Container(
                    height: 50,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        checkoutPaymentItem('assets/images/Paypal.png', true),
                        checkoutPaymentItem('assets/images/Visa.png', false),
                        checkoutPaymentItem(
                            'assets/images/MasterCard.png', false),
                        checkoutPaymentItem(
                            'assets/images/Apple Pay.png', false),
                        checkoutPaymentItem(
                            'assets/images/Google Pay.png', false),
                      ],
                    ),
                  ),
                ),
                ListTitleRow(title: 'Order Summary', suffix: ''),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 15,
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black,
                        width: 0.8,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        checkoutHorizontalDetail('Sub Total', 180),
                        checkoutHorizontalDetail('Shipping', 20),
                        checkoutHorizontalDetail('Coupon', 0),
                        Divider(
                          height: 12,
                          thickness: 0.8,
                        ),
                        checkoutHorizontalDetail('Total', 170),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenHeight(24),
                vertical: getProportionateScreenHeight(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          'Coupon',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () => showDialog(
                          context: context,
                          builder: (BuildContext context) => CustomDialog(
                            title: "Coupon",
                            description: "Please add your coupon code",
                            buttonText: "Add",
                            input: '',
                          ),
                        ),
                        child: Text(
                          'Add Coupon Code',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 5),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(15)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      checkoutDetail('Total  ', 170),
                      Spacer(),
                      Expanded(
                        child: DefaultButton(
                          text: 'Pay Now',
                          press: () => Navigator.pushNamed(
                              context, PurchasedScreen.routeName),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget checkoutPaymentItem(String image, bool selected) {
    return Container(
      width: 80,
      margin: EdgeInsets.only(right: 6),
      decoration: BoxDecoration(
        border: selected
            ? Border.all(
                color: kPrimaryColor,
                width: 1.8,
              )
            : null,
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Image.asset(
          image,
          width: 75,
        ),
      ),
    );
  }

  Widget checkoutHorizontalDetail(String title, double amount) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
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

  Widget checkoutDetail(String title, double amount) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
