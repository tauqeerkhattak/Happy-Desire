import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

class SearchTextField extends StatelessWidget {
  final String label;

  const SearchTextField({
    Key key,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: Colors.transparent),
      gapPadding: 10,
    );

    return TextFormField(
      decoration: InputDecoration(
        hintText: label,
        alignLabelWithHint: false,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        border: outlineInputBorder,
        contentPadding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(4),
        ),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Icon(Icons.search, color: kPrimaryColor),
        ),
      ),
    );
  }
}
