import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

class OrderNotificationListItem extends StatelessWidget {
  final String title;
  final String message;
  final IconData icon;
  final String date;

  const OrderNotificationListItem({
    Key key,
    this.title,
    this.message,
    this.icon,
    this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.screenHeight * 0.007,
        horizontal: SizeConfig.screenWidth * 0.043,
      ),
      child: Container(
        width: double.infinity,
        child: Card(
          margin: EdgeInsets.all(0),
          shadowColor: kCardBackgroundColor,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: SizeConfig.screenHeight * 0.01),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.shade200,
                    radius: 23,
                    child: Icon(icon, color: kPrimaryColor),
                  ),
                ),
                SizedBox(width: SizeConfig.screenWidth * 0.04),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(height: SizeConfig.screenHeight * 0.005),
                      Text(
                        '$message',
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                      Text(
                        '$date',
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
