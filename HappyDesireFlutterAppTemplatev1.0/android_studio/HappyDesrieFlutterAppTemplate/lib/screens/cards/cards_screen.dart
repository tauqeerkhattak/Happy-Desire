import 'package:flutter/material.dart';
import 'package:shop_app/screens/add_card/add_card_screen.dart';

import 'components/body.dart';

class CardsScreen extends StatelessWidget {
  static String routeName = "/cards";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cards'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(
              context,
              AddCardScreen.routeName,
            ),
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: Body(),
    );
  }
}
