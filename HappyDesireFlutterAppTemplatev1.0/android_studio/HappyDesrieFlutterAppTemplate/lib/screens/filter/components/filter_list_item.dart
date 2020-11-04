import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/constants.dart';

class FilterListItem extends StatelessWidget {
  final String text;
  final bool selected;

  const FilterListItem({
    Key key,
    this.text,
    this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 6),
      decoration: BoxDecoration(
        border: selected
            ? Border.all(
                color: kPrimaryColor,
                width: 1.5,
              )
            : null,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Card(
        margin: EdgeInsets.all(0),
        elevation: 4,
        shadowColor: kCardBackgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 0,
          ),
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.raleway(fontSize: 17),
            ),
          ),
        ),
      ),
    );
  }
}
