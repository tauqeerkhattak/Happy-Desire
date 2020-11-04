import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class LanguageListItem extends StatelessWidget {
  final String language;
  final String icon;
  final bool selected;
  final Function changeLanguage;

  const LanguageListItem({
    Key key,
    this.language,
    this.icon,
    this.selected,
    this.changeLanguage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: GestureDetector(
        onTap: changeLanguage,
        child: Container(
          decoration: selected
              ? BoxDecoration(
                  border: Border.all(color: kPrimaryColor, width: 2),
                  borderRadius: BorderRadius.circular(10),
                )
              : BoxDecoration(
                  border: Border.all(color: Colors.transparent),
                ),
          child: Card(
            elevation: selected ? 0 : 5,
            shadowColor: kCardBackgroundColor,
            margin: EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              title: Text(
                language,
                style: TextStyle(
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
              leading: Image.asset(
                icon,
                width: 35,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
