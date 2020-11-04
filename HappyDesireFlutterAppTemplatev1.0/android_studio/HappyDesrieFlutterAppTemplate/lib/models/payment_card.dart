import 'package:flutter/material.dart';

class PaymentCard {
  int id;
  Color color;
  String cardNumber;
  String bankName;
  String expiry;
  String cardHolder;
  String logo;
  bool selected;

  PaymentCard({
    this.id,
    this.color,
    this.cardNumber,
    this.bankName,
    this.expiry,
    this.cardHolder,
    this.logo,
    this.selected,
  });
}

