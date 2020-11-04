import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/components/no_account_text.dart';
import 'package:shop_app/screens/tabs/tabs_screen.dart';

import '../../../components/default_button.dart';
import '../../../size_config.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String name;
  String email;
  String password;
  bool remember = false;
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: SizeConfig.screenHeight * 0.50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                otpRow(),
                SizedBox(height: getProportionateScreenHeight(20)),
                AccountText(
                  question: "Didn't get a code? ",
                  action: 'Send again',
                ),
                SizedBox(height: getProportionateScreenHeight(40)),
              ],
            ),
          ),
          Column(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: DefaultButton(
                  text: "Verify",
                  press: () {
                    if (_formKey.currentState.validate()) {
                      _formKey.currentState.save();
                      // if all are valid then go to success screen
                      Navigator.pushReplacementNamed(
                          context, TabsScreen.routeName);
                    }
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget otpRow() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        otpInputField(),
        SizedBox(width: SizeConfig.screenWidth * 0.02),
        otpInputField(),
        SizedBox(width: SizeConfig.screenWidth * 0.02),
        otpInputField(),
        SizedBox(width: SizeConfig.screenWidth * 0.02),
        otpInputField(),
      ],
    );
  }

  Widget otpInputField() {
    return Card(
      elevation: 2.5,
      child: Container(
        width: SizeConfig.screenWidth * 0.13,
        height: SizeConfig.screenWidth * 0.13,
        decoration: BoxDecoration(
          color: Colors.grey[25],
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Center(
          child: TextField(
            textAlign: TextAlign.center,
            maxLength: 1,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18)
            ),
            onChanged: (value) {
              if (value.isNotEmpty) FocusScope.of(context).nextFocus();
            },
            onEditingComplete: () => FocusScope.of(context).nextFocus(),
            decoration: InputDecoration(
              counterText: '',
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              hintText: "_",
              contentPadding: EdgeInsets.symmetric(
                  vertical: SizeConfig.screenWidth * 0.01,
                  horizontal: SizeConfig.screenWidth * 0.04),
              // If  you are using latest version of flutter then lable text and hint text shown like this
              // if you r using flutter less then 1.20.* then maybe this is not working properly
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
          ),
        ),
      ),
    );
  }
}
