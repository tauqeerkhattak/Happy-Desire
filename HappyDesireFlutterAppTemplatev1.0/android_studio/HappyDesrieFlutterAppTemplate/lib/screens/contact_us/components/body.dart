import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/components/custom_text_form_field.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getProportionateScreenHeight(15)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.phone_android,
                  size: 30,
                  color: kPrimaryColor,
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Phones',
                      style: GoogleFonts.raleway(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text('+961 12345678'),
                    Text('+961 87654321'),
                  ],
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(30)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.mail_outline,
                  size: 30,
                  color: kPrimaryColor,
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email',
                      style: GoogleFonts.raleway(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text('info@happydesire.com'),
                  ],
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'Subject',
                style: TextStyle(fontSize: 16),
              ),
            ),
            CustomTextFormField(
              hint: 'Type your subject here...',
              obscure: false,
            ),
            SizedBox(height: getProportionateScreenHeight(10)),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'Your Message',
                style: TextStyle(fontSize: 16),
              ),
            ),
            CustomTextFormField(
              hint: 'Type your message here...',
              obscure: false,
              maxLines: 7,
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            DefaultButton(
              text: 'Send',
              press: () => null,
            )
          ],
        ),
      ),
    );
  }
}
