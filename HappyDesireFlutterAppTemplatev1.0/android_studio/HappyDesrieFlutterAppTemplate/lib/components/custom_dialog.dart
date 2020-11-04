import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_text_form_field.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/size_config.dart';

class CustomDialog extends StatelessWidget {
  static const double padding = 16.0;
  static const double avatarRadius = 66.0;
  final String title, description, buttonText, input;
  final Image image;

  CustomDialog({
    @required this.title,
    @required this.description,
    @required this.input,
    @required this.buttonText,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(padding),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            top: padding,
            bottom: padding,
            left: padding,
            right: padding,
          ),
          decoration: new BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(padding),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset: const Offset(0.0, 10.0),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min, // To make the card compact
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(16)),
              Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: CustomTextFormField(
                  obscure: false,
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(24)),
              Align(
                alignment: Alignment.bottomRight,
                child: DefaultButton(
                  press: () => Navigator.of(context).pop(),
                  text: buttonText,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
