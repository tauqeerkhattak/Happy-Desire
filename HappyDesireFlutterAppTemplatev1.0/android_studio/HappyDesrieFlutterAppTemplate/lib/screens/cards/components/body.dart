import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/dummy_data.dart';
import 'package:shop_app/models/payment_card.dart';
import 'package:shop_app/screens/cards/components/credit_card_list_item.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<PaymentCard> cards = new List();

  @override
  void initState() {
    super.initState();
    cards = DummyData.dummyCards;
  }

  removeCard(int index) {
    setState(() {
      cards.removeAt(index);
    });
  }

  changeCard(int index) {
    setState(() {
      for (int i = 0; i < cards.length; i++) {
        if (i == index) {
          setState(() {
            cards[i].selected = true;
          });
        } else {
          setState(() {
            cards[i].selected = false;
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Your Payment Cards'),
        Expanded(
          child: ListView.builder(
            itemCount: cards.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(bottom: 20),
            itemBuilder: (context, index) {
              return Slidable(
                actionPane: SlidableDrawerActionPane(),
                actionExtentRatio: 0.25,
                child: CreditCardListItem(
                  color: cards[index].color,
                  bankName: cards[index].bankName,
                  cardNumber: cards[index].cardNumber,
                  expiry: cards[index].expiry,
                  cardHolder: cards[index].cardHolder,
                  logo: cards[index].logo,
                  selected: cards[index].selected,
                  changeCard: () => changeCard(index),
                ),
                secondaryActions: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 10),
                    child: Container(
                      height: double.infinity,
                      child: Card(
                        elevation: 5,
                        shadowColor: kCardBackgroundColor,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(15)),
                        ),
                        child: IconSlideAction(
                          color: Colors.transparent,
                          icon: Icons.delete,
                          foregroundColor: kPrimaryColor,
                          onTap: () => removeCard(index),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
