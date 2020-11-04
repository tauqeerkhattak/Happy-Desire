import 'package:flutter/material.dart';

import 'components/body.dart';

class AddAddressScreen extends StatelessWidget {
  static String routeName = "/add_address";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Address'),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
