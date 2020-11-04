import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

class CreditCardListItem extends StatelessWidget {
  final Color color;
  final String bankName;
  final String cardNumber;
  final String expiry;
  final String cardHolder;
  final String logo;
  final bool selected;
  final Function changeCard;

  const CreditCardListItem({
    Key key,
    this.color,
    this.bankName,
    this.cardNumber,
    this.expiry,
    this.cardHolder,
    this.logo,
    this.selected,
    this.changeCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: selected
          ? EdgeInsets.fromLTRB(15, 10, 15, 0)
          : EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: GestureDetector(
        onTap: changeCard,
        child: Container(
          width: SizeConfig.screenWidth / 1.1,
          height: selected ? 180 : 170,
          decoration: BoxDecoration(
            border: selected
                ? Border.all(color: kPrimaryColor, width: 2)
                : Border.all(color: Colors.transparent),
            borderRadius: BorderRadius.all(
              Radius.circular(22),
            ),
          ),
          child: Card(
            color: color,
            elevation: selected ? 0 : 5,
            margin: EdgeInsets.all(2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Stack(
                children: [
                  Text(
                    bankName,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cardNumber,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w100),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Text(
                            expiry,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w100),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            cardHolder,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w100),
                          ),
                          Image.asset(
                            logo,
                            width: 50,
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
