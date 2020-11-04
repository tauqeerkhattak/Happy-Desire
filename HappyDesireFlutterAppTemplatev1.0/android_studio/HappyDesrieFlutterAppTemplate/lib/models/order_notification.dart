import 'package:flutter/material.dart';

class OrderNotification {
  String title;
  String message;
  String datetime;
  IconData icon;

  OrderNotification({
    this.title,
    this.datetime,
    this.icon,
    this.message,
  });
}
