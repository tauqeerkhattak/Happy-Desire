import 'package:flutter/material.dart';
import 'package:shop_app/components/search_text_field.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/dummy_data.dart';
import 'package:shop_app/screens/filter/filter_screen.dart';
import 'package:shop_app/components/product_list_item.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.03),
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.01),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.screenWidth * 0.02),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          margin: EdgeInsets.all(0),
                          elevation: 5,
                          shadowColor: kCardBackgroundColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: SearchTextField(label: 'Search Here...'),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(10),
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(
                    context,
                    FilterScreen.routeName,
                  ),
                  child: Container(
                    width: 50,
                    height: 50,
                    child: Card(
                      margin: EdgeInsets.all(0),
                      elevation: 5,
                      shadowColor: kCardBackgroundColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Image.asset('assets/icons/Filter.png'),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(8),
                ),
              ],
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.02),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              padding: EdgeInsets.only(bottom: 20),
              itemBuilder: (context, index) => ProductListItem(
                product: DummyData.dummyProducts[index],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
