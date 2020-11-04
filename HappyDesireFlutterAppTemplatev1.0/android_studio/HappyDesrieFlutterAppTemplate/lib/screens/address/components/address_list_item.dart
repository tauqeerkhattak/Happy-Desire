import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

class AddressListItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool selected;
  final Function changeAddress;

  const AddressListItem(
      {Key key, this.title, this.subtitle, this.selected, this.changeAddress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: selected
          ? EdgeInsets.fromLTRB(5, 2, 5, 2)
          : EdgeInsets.fromLTRB(10, 2, 10, 2),
      child: GestureDetector(
        onTap: changeAddress,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            border: selected
                ? Border.all(color: kPrimaryColor, width: 2)
                : Border.all(color: Colors.transparent),
          ),
          child: Card(
            shadowColor: kCardBackgroundColor,
            margin: EdgeInsets.all(2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            elevation: selected ? 0 : 5,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(11),
                vertical: getProportionateScreenHeight(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: getProportionateScreenHeight(4)),
                          ImageIcon(
                            AssetImage('assets/icons/Location.png'),
                            color: kPrimaryColor,
                          ),
                        ],
                      ),
                      SizedBox(width: getProportionateScreenWidth(8)),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(height: getProportionateScreenHeight(4)),
                            Text(
                              subtitle,
                            ),
                            SizedBox(height: getProportionateScreenHeight(8)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 70,
                                  height: 28,
                                  child: FlatButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                    ),
                                    color: kPrimaryColor,
                                    onPressed: () => null,
                                    child: Text(
                                      'Edit',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
