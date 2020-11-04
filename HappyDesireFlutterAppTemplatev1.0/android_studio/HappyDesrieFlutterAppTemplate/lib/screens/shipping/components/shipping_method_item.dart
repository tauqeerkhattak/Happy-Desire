import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class ShippingMethodItem extends StatelessWidget {
  final String method;
  final double price;
  final bool selected;

  const ShippingMethodItem({
    Key key,
    this.method,
    this.price,
    this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          border: selected
              ? Border.all(color: kPrimaryColor, width: 2)
              : Border.all(color: Colors.transparent),
        ),
        child: Card(
          margin: EdgeInsets.all(2),
          elevation: 5,
          shadowColor: kCardBackgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  method,
                  style: TextStyle(fontSize: 16),
                ),
                price != null ? Text('\$$price') : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
