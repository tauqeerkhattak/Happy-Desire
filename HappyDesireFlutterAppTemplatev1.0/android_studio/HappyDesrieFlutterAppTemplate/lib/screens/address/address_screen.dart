import 'package:flutter/material.dart';
import 'package:shop_app/screens/add_address/add_address_screen.dart';

import 'components/body.dart';

class AddressScreen extends StatelessWidget {
  static String routeName = "/addresses";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shipping Address'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(
              context,
              AddAddressScreen.routeName,
            ),
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: Body(),
    );
  }
}
