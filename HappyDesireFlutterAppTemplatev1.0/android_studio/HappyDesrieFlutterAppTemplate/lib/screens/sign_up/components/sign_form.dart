import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_text_form_field.dart';
import 'package:shop_app/screens/verification/verification_screen.dart';

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              'Name',
              style: TextStyle(fontSize: 15),
            ),
          ),
          CustomTextFormField(
            hint: 'Please enter your name',
            obscure: false,
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              'Email',
              style: TextStyle(fontSize: 15),
            ),
          ),
          CustomTextFormField(
            hint: 'Please enter your email',
            obscure: false,
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              'Password',
              style: TextStyle(fontSize: 15),
            ),
          ),
          CustomTextFormField(
            hint: 'Please enter your password',
            obscure: true,
          ),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "Sign up",
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                // if all are valid then go to success screen
                Navigator.pushNamed(context, VerificationScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }
}
