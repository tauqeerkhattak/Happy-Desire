import 'package:flutter/material.dart';
import 'package:shop_app/screens/shipping/components/shipping_method_item.dart';

class ShippingScreen extends StatelessWidget {
  static String routeName = "/shipping";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shipping Method'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Choose a Shipping Method'),
            ListView(
              shrinkWrap: true,
              padding: EdgeInsets.fromLTRB(15, 15, 15, 20),
              children: [
               ShippingMethodItem(
                 method: 'Free Shipping',
                 selected: false,
               ),
                ShippingMethodItem(
                  method: 'Flat Rate',
                  price: 20,
                  selected: true,
                ),
                ShippingMethodItem(
                  method: 'Local Pickup',
                  price: 5,
                  selected: false,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
