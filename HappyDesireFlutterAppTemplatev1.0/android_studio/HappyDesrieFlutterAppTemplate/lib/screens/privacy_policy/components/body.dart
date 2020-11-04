import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getProportionateScreenHeight(10)),
            Text(
              'Personal and Sensitive Information',
              style: GoogleFonts.raleway(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            SizedBox(height: getProportionateScreenHeight(10)),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus a ipsum eget purus rutrum iaculis at id elit. Praesent molestie arcu non pharetra rutrum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Cras condimentum viverra fringilla. Curabitur ac libero id leo malesuada gravida. Donec tincidunt velit sit amet diam aliquam pharetra. Nam vel volutpat erat. In hac habitasse platea dictumst. Etiam et sapien ut arcu pulvinar sagittis. Phasellus sapien dui, pulvinar vel augue eget, cursus hendrerit felis. Cras quis fermentum justo.',
              style: TextStyle(height: 2, fontSize: 14),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: getProportionateScreenHeight(15)),
            Text(
              'Data Collection and Storage',
              style: GoogleFonts.raleway(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            SizedBox(height: getProportionateScreenHeight(10)),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus a ipsum eget purus rutrum iaculis at id elit. Praesent molestie arcu non pharetra rutrum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Cras condimentum viverra fringilla. Curabitur ac libero id leo malesuada gravida. Donec tincidunt velit sit amet diam aliquam pharetra. Nam vel volutpat erat. In hac habitasse platea dictumst. Etiam et sapien ut arcu pulvinar sagittis. Phasellus sapien dui, pulvinar vel augue eget, cursus hendrerit felis. Cras quis fermentum justo.',
              style: TextStyle(height: 2, fontSize: 14),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
