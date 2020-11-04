import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

class CustomTextFormField extends StatelessWidget {
  final String hint;
  final bool obscure;
  final int maxLines;

  const CustomTextFormField({
    Key key,
    this.hint,
    this.obscure,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UnderlineInputBorder inputBorder = UnderlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    );

    return Card(
      elevation: 5,
      shadowColor: kCardBackgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        obscureText: obscure,
        cursorColor: kPrimaryColor,
        maxLines: maxLines != null ? maxLines : 1,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(fontSize: 15),
          border: inputBorder,
          contentPadding: EdgeInsets.symmetric(
            vertical: getProportionateScreenWidth(12),
            horizontal: getProportionateScreenWidth(12),
          ),
          // If  you are using latest version of flutter then label text and hint text shown like this
          // if you r using flutter less then 1.20.* then maybe this is not working properly
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
      ),
    );
  }
}
