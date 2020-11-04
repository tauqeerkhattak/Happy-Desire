import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/filter/components/filter_list_item.dart';
import 'package:shop_app/screens/filter/components/filter_title_row.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  double _startValue = 100;
  double _endValue = 850;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          left: getProportionateScreenWidth(19),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getProportionateScreenHeight(8)),
            FilterTitleRow(title: 'Category'),
            SizedBox(height: getProportionateScreenHeight(16)),
            Container(
              height: 52,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.fromLTRB(2, 3, 2, 7),
                children: [
                  FilterListItem(text: 'Men', selected: true),
                  FilterListItem(text: 'Shoes', selected: false),
                  FilterListItem(text: 'Women', selected: false),
                  FilterListItem(text: 'Electronics', selected: false),
                ],
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(8)),
            FilterTitleRow(title: 'Size'),
            SizedBox(height: getProportionateScreenHeight(16)),
            Container(
              height: 52,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.fromLTRB(2, 3, 2, 7),
                children: [
                  FilterListItem(text: '31', selected: false),
                  FilterListItem(text: '32', selected: false),
                  FilterListItem(text: '34', selected: true),
                  FilterListItem(text: '35', selected: false),
                  FilterListItem(text: '36', selected: false),
                  FilterListItem(text: '37', selected: false),
                  FilterListItem(text: '38', selected: false),
                ],
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(8)),
            FilterTitleRow(title: 'Color'),
            SizedBox(height: getProportionateScreenHeight(16)),
            Container(
              height: 52,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.fromLTRB(2, 3, 2, 7),
                children: [
                  FilterListItem(text: 'Red', selected: false),
                  FilterListItem(text: 'Blue', selected: false),
                  FilterListItem(text: 'Green', selected: false),
                  FilterListItem(text: 'Yellow', selected: true),
                  FilterListItem(text: 'Pink', selected: false),
                ],
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(16)),
            FilterTitleRow(title: 'Price'),
            SizedBox(height: getProportionateScreenHeight(16)),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$ $_startValue',
                    style: TextStyle(
                      fontSize: 16,
                      color: kPrimaryColor,
                    ),
                  ),
                  Text(
                    '\$ $_endValue',
                    style: TextStyle(
                      fontSize: 16,
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
            RangeSlider(
              min: 0.0,
              max: 1200.0,
              activeColor: kPrimaryColor,
              values: RangeValues(_startValue, _endValue),
              onChanged: (values) {
                setState(() {
                  _startValue = values.start.roundToDouble();
                  _endValue = values.end.roundToDouble();
                });
              },
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 15, 10),
              child: DefaultButton(
                text: 'Apply',
                press: () => Navigator.pop(context),
              ),
            )
          ],
        ),
      ),
    );
  }
}
