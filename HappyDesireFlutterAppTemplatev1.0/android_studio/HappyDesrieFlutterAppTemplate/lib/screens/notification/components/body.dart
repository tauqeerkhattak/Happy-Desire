import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/dummy_data.dart';
import 'package:shop_app/models/order_notification.dart';
import 'package:shop_app/models/promotion_notification.dart';
import 'package:shop_app/screens/notification/components/order_notification_list_item.dart';
import 'package:shop_app/screens/notification/components/promotion_notification_list_item.dart';

import '../../../size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<OrderNotification> orderNotifications;
  List<PromotionNotification> promotionNotifications;

  @override
  void initState() {
    super.initState();
    orderNotifications = DummyData.dummyOrderNotifications;
    promotionNotifications = DummyData.dummyPromotionNotifications;
  }

  removeOrderNotification(int index) {
    setState(() {
      orderNotifications.removeAt(index);
    });
  }

  removePromotionNotification(int index) {
    setState(() {
      promotionNotifications.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: orderNotifications != null
          ? SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  promotionNotifications.isNotEmpty
                      ? Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: getProportionateScreenWidth(15),
                                right: getProportionateScreenWidth(15),
                                top: getProportionateScreenWidth(8),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Promotions',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: getProportionateScreenHeight(16)),
                            ListView.builder(
                              itemCount: promotionNotifications.length,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Slidable(
                                  actionPane: SlidableDrawerActionPane(),
                                  actionExtentRatio: 0.25,
                                  child: PromotionNotificationListItem(
                                    image: promotionNotifications[index].image,
                                    datetime:
                                        promotionNotifications[index].datetime,
                                    message:
                                        promotionNotifications[index].message,
                                  ),
                                  secondaryActions: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 10),
                                      child: Container(
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(15),
                                          ),
                                        ),
                                        child: IconSlideAction(
                                          color: Colors.transparent,
                                          icon: Icons.delete,
                                          foregroundColor: kPrimaryColor,
                                          onTap: () =>
                                              removePromotionNotification(
                                                  index),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ],
                        )
                      : Container(),
                  orderNotifications.isNotEmpty
                      ? Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: getProportionateScreenWidth(15),
                                right: getProportionateScreenWidth(15),
                                top: getProportionateScreenWidth(15),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Your Activity',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: getProportionateScreenHeight(16)),
                            ListView.builder(
                              itemCount: orderNotifications.length,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Slidable(
                                  actionPane: SlidableDrawerActionPane(),
                                  actionExtentRatio: 0.25,
                                  child: OrderNotificationListItem(
                                    icon: orderNotifications[index].icon,
                                    title: orderNotifications[index].title,
                                    date: orderNotifications[index].datetime,
                                    message: orderNotifications[index].message,
                                  ),
                                  secondaryActions: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 10),
                                      child: Container(
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(15),
                                          ),
                                        ),
                                        child: IconSlideAction(
                                          color: Colors.transparent,
                                          icon: Icons.delete,
                                          foregroundColor: kPrimaryColor,
                                          onTap: () =>
                                              removeOrderNotification(index),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ],
                        )
                      : Container(),
                  SizedBox(height: getProportionateScreenHeight(40)),
                ],
              ),
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/Notification Empty.png',
                    width: getProportionateScreenWidth(143),
                    color: kPrimaryColor,
                  ),
                  SizedBox(height: getProportionateScreenWidth(40)),
                  Text(
                    'You Have No New Notifications!',
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
