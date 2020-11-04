import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/dummy_data.dart';
import 'package:shop_app/models/address.dart';
import 'package:shop_app/screens/address/components/address_list_item.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Address> addresses;

  @override
  void initState() {
    super.initState();
    addresses = DummyData.dummyAddresses;
  }

  removeAddress(int index) {
    setState(() {
      addresses.removeAt(index);
    });
  }

  changeAddress(int index) {
    setState(() {
      for (int i = 0; i < addresses.length; i++) {
        if (i == index) {
          setState(() {
            addresses[i].selected = true;
          });
        } else {
          setState(() {
            addresses[i].selected = false;
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text('Your Shipping Addresses'),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
              child: ListView.builder(
                itemCount: addresses.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Slidable(
                    actionPane: SlidableDrawerActionPane(),
                    actionExtentRatio: 0.25,
                    child: AddressListItem(
                      title: addresses[index].title,
                      subtitle: addresses[index].subtitle,
                      selected: addresses[index].selected,
                      changeAddress: () => changeAddress(index),
                    ),
                    closeOnScroll: true,
                    secondaryActions: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 10,
                        ),
                        child: Container(
                          height: double.infinity,
                          child: Card(
                            elevation: 5,
                            shadowColor: kCardBackgroundColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: IconSlideAction(
                              color: Colors.transparent,
                              icon: Icons.delete,
                              foregroundColor: kPrimaryColor,
                              onTap: () => removeAddress(index),
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
        ),
      ),
    );
  }
}
